import Foundation

public struct PmdSetting {
    public enum PmdSettingType: UInt8, CaseIterable {
        case sampleRate = 0
        case resolution
        case range
        case rangeMilliUnit
        case channels
        case factor
        case security
        case unknown = 0xff
    }
    
    static let mapTypeToFieldSize = [PmdSettingType.sampleRate : 2,
                                     PmdSettingType.resolution : 2,
                                     PmdSettingType.range : 2,
                                     PmdSettingType.rangeMilliUnit : 4,
                                     PmdSettingType.channels : 1,
                                     PmdSettingType.factor : 4]
    
    public var settings = [PmdSettingType : Set<UInt32>]()
    public var selected = [PmdSettingType : UInt32]()
    
    public init(_ selected: [PmdSettingType : UInt32]){
        self.selected = selected
    }
    
    public init(_ data: Data){
        self.settings = PmdSetting.parsePmdSettingsData(data)
        self.selected = settings.reduce(into: [:]) { (result, arg1) in
            let (key, value) = arg1
            result[PmdSetting.PmdSettingType(rawValue: UInt8(key.rawValue)) ?? PmdSetting.PmdSettingType.unknown]=value.max()!
        }
    }
    
    static func parsePmdSettingsData(_ data: Data) -> [PmdSettingType : Set<UInt32>] {
        return [:]
    }
    
    mutating func updatePmdSettingsFromStartResponse(_ data: Data) {
        let settingsFromStartResponse = PmdSetting.parsePmdSettingsData(data)
        if let factor = settingsFromStartResponse[PmdSettingType.factor] {
            selected[PmdSettingType.factor] = factor.first!
        }
    }
    
    public func serialize() -> Data {
        return selected.reduce(into: NSMutableData()) { (result, entry) in
            if entry.key != .factor {
                result.append([UInt8(entry.key.rawValue)], length: 1)
                result.append([0x01], length: 1)
                let fieldSize = UInt32(PmdSetting.mapTypeToFieldSize[entry.key] ?? 0)
                for i in 0..<fieldSize {
                    result.append([UInt8((entry.value >> (i*8)) & 0xff)], length: 1)
                }
            }
        } as Data
    }
}
