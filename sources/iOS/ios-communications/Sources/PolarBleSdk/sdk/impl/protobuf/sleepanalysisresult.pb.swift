// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: sleepanalysisresult.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// SLEEPRES.BPB=PbSleepAnalysisResult

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Data_PbSleepWakeState: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// State is unknown e.g. because of bad skin contact (possible with OHR based sleep)
  case pbUnknown // = 0

  /// This is regarded as an interruption of sleep during night
  case pbWake // = -2

  /// rem sleep
  case pbRem // = -3

  /// combined non rem 1 and 2 sleep
  case pbNonrem12 // = -5

  /// Deepest sleep. This is used in general during sleep if the 2 above aren't possible (due to technical / algorithm restrictions)
  case pbNonrem3 // = -6

  init() {
    self = .pbUnknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case -6: self = .pbNonrem3
    case -5: self = .pbNonrem12
    case -3: self = .pbRem
    case -2: self = .pbWake
    case 0: self = .pbUnknown
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .pbNonrem3: return -6
    case .pbNonrem12: return -5
    case .pbRem: return -3
    case .pbWake: return -2
    case .pbUnknown: return 0
    }
  }

}

#if swift(>=4.2)

extension Data_PbSleepWakeState: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

///
///A single state change in a night's sleep
struct Data_PbSleepWakePhase {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Start time / offset from the beginning of the night sleep
  var secondsFromSleepStart: UInt32 {
    get {return _secondsFromSleepStart ?? 0}
    set {_secondsFromSleepStart = newValue}
  }
  /// Returns true if `secondsFromSleepStart` has been explicitly set.
  var hasSecondsFromSleepStart: Bool {return self._secondsFromSleepStart != nil}
  /// Clears the value of `secondsFromSleepStart`. Subsequent reads from it will return its default value.
  mutating func clearSecondsFromSleepStart() {self._secondsFromSleepStart = nil}

  /// Sleep / wake state
  var sleepwakeState: Data_PbSleepWakeState {
    get {return _sleepwakeState ?? .pbUnknown}
    set {_sleepwakeState = newValue}
  }
  /// Returns true if `sleepwakeState` has been explicitly set.
  var hasSleepwakeState: Bool {return self._sleepwakeState != nil}
  /// Clears the value of `sleepwakeState`. Subsequent reads from it will return its default value.
  mutating func clearSleepwakeState() {self._sleepwakeState = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _secondsFromSleepStart: UInt32? = nil
  fileprivate var _sleepwakeState: Data_PbSleepWakeState? = nil
}

///
///Sleep cycle: a single rem-to-rem period. Note that sleep depth at the end of last cycle is also needed in which the offset = total duration of sleep.
struct Data_PbSleepCycle {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Start time / offset from the beginning of the night sleep
  var secondsFromSleepStart: UInt32 {
    get {return _secondsFromSleepStart ?? 0}
    set {_secondsFromSleepStart = newValue}
  }
  /// Returns true if `secondsFromSleepStart` has been explicitly set.
  var hasSecondsFromSleepStart: Bool {return self._secondsFromSleepStart != nil}
  /// Clears the value of `secondsFromSleepStart`. Subsequent reads from it will return its default value.
  mutating func clearSecondsFromSleepStart() {self._secondsFromSleepStart = nil}

  /// Sleep depth at the start of sleep cycle (normalised std of respiration)
  /// range: [0.0 - 2.0]
  var sleepDepthStart: Float {
    get {return _sleepDepthStart ?? 0}
    set {_sleepDepthStart = newValue}
  }
  /// Returns true if `sleepDepthStart` has been explicitly set.
  var hasSleepDepthStart: Bool {return self._sleepDepthStart != nil}
  /// Clears the value of `sleepDepthStart`. Subsequent reads from it will return its default value.
  mutating func clearSleepDepthStart() {self._sleepDepthStart = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _secondsFromSleepStart: UInt32? = nil
  fileprivate var _sleepDepthStart: Float? = nil
}

///
///Complete summary of a night's sleep. 
///Note! Optional sleep_cycles fields can be found only as output of new Sleep Structure features and this can be used to
///check if sleep result is coming from "old" or "new" algorithm and separate field for version is not needed.
struct Data_PbSleepAnalysisResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Sleep start time and date
  var sleepStartTime: PbLocalDateTime {
    get {return _storage._sleepStartTime ?? PbLocalDateTime()}
    set {_uniqueStorage()._sleepStartTime = newValue}
  }
  /// Returns true if `sleepStartTime` has been explicitly set.
  var hasSleepStartTime: Bool {return _storage._sleepStartTime != nil}
  /// Clears the value of `sleepStartTime`. Subsequent reads from it will return its default value.
  mutating func clearSleepStartTime() {_uniqueStorage()._sleepStartTime = nil}

  /// Sleep end time and date
  var sleepEndTime: PbLocalDateTime {
    get {return _storage._sleepEndTime ?? PbLocalDateTime()}
    set {_uniqueStorage()._sleepEndTime = newValue}
  }
  /// Returns true if `sleepEndTime` has been explicitly set.
  var hasSleepEndTime: Bool {return _storage._sleepEndTime != nil}
  /// Clears the value of `sleepEndTime`. Subsequent reads from it will return its default value.
  mutating func clearSleepEndTime() {_uniqueStorage()._sleepEndTime = nil}

  /// The time when the file was last written to.
  var lastModified: PbSystemDateTime {
    get {return _storage._lastModified ?? PbSystemDateTime()}
    set {_uniqueStorage()._lastModified = newValue}
  }
  /// Returns true if `lastModified` has been explicitly set.
  var hasLastModified: Bool {return _storage._lastModified != nil}
  /// Clears the value of `lastModified`. Subsequent reads from it will return its default value.
  mutating func clearLastModified() {_uniqueStorage()._lastModified = nil}

  /// The Sleep Goal at the time of recording, in minutes.
  /// If the user physical settings does not have this
  /// data, it should be calculated according to age.
  var sleepGoalMinutes: UInt32 {
    get {return _storage._sleepGoalMinutes ?? 0}
    set {_uniqueStorage()._sleepGoalMinutes = newValue}
  }
  /// Returns true if `sleepGoalMinutes` has been explicitly set.
  var hasSleepGoalMinutes: Bool {return _storage._sleepGoalMinutes != nil}
  /// Clears the value of `sleepGoalMinutes`. Subsequent reads from it will return its default value.
  mutating func clearSleepGoalMinutes() {_uniqueStorage()._sleepGoalMinutes = nil}

  /// Sleep / wake phases during night (hypnogram)
  var sleepwakePhases: [Data_PbSleepWakePhase] {
    get {return _storage._sleepwakePhases}
    set {_uniqueStorage()._sleepwakePhases = newValue}
  }

  /// Snooze time (time when alarm was snoozed)
  var snoozeTime: [PbLocalDateTime] {
    get {return _storage._snoozeTime}
    set {_uniqueStorage()._snoozeTime = newValue}
  }

  /// Alarm time (time when alarm was stopped)
  var alarmTime: PbLocalDateTime {
    get {return _storage._alarmTime ?? PbLocalDateTime()}
    set {_uniqueStorage()._alarmTime = newValue}
  }
  /// Returns true if `alarmTime` has been explicitly set.
  var hasAlarmTime: Bool {return _storage._alarmTime != nil}
  /// Clears the value of `alarmTime`. Subsequent reads from it will return its default value.
  mutating func clearAlarmTime() {_uniqueStorage()._alarmTime = nil}

  /// Offset seconds for sleep_start_time. Used in trimming.
  var sleepStartOffsetSeconds: Int32 {
    get {return _storage._sleepStartOffsetSeconds ?? 0}
    set {_uniqueStorage()._sleepStartOffsetSeconds = newValue}
  }
  /// Returns true if `sleepStartOffsetSeconds` has been explicitly set.
  var hasSleepStartOffsetSeconds: Bool {return _storage._sleepStartOffsetSeconds != nil}
  /// Clears the value of `sleepStartOffsetSeconds`. Subsequent reads from it will return its default value.
  mutating func clearSleepStartOffsetSeconds() {_uniqueStorage()._sleepStartOffsetSeconds = nil}

  /// Offset seconds for sleep_end_time. Used in trimming.
  var sleepEndOffsetSeconds: Int32 {
    get {return _storage._sleepEndOffsetSeconds ?? 0}
    set {_uniqueStorage()._sleepEndOffsetSeconds = newValue}
  }
  /// Returns true if `sleepEndOffsetSeconds` has been explicitly set.
  var hasSleepEndOffsetSeconds: Bool {return _storage._sleepEndOffsetSeconds != nil}
  /// Clears the value of `sleepEndOffsetSeconds`. Subsequent reads from it will return its default value.
  mutating func clearSleepEndOffsetSeconds() {_uniqueStorage()._sleepEndOffsetSeconds = nil}

  /// How well the user thought they slept.
  var userSleepRating: PbSleepUserRating {
    get {return _storage._userSleepRating ?? .pbSleptUndefined}
    set {_uniqueStorage()._userSleepRating = newValue}
  }
  /// Returns true if `userSleepRating` has been explicitly set.
  var hasUserSleepRating: Bool {return _storage._userSleepRating != nil}
  /// Clears the value of `userSleepRating`. Subsequent reads from it will return its default value.
  mutating func clearUserSleepRating() {_uniqueStorage()._userSleepRating = nil}

  /// Device used to measure the Sleep.
  var recordingDevice: PbDeviceId {
    get {return _storage._recordingDevice ?? PbDeviceId()}
    set {_uniqueStorage()._recordingDevice = newValue}
  }
  /// Returns true if `recordingDevice` has been explicitly set.
  var hasRecordingDevice: Bool {return _storage._recordingDevice != nil}
  /// Clears the value of `recordingDevice`. Subsequent reads from it will return its default value.
  mutating func clearRecordingDevice() {_uniqueStorage()._recordingDevice = nil}

  /// Battery was nearly empty and Sleep was automatically stopped.
  var batteryRanOut: Bool {
    get {return _storage._batteryRanOut ?? false}
    set {_uniqueStorage()._batteryRanOut = newValue}
  }
  /// Returns true if `batteryRanOut` has been explicitly set.
  var hasBatteryRanOut: Bool {return _storage._batteryRanOut != nil}
  /// Clears the value of `batteryRanOut`. Subsequent reads from it will return its default value.
  mutating func clearBatteryRanOut() {_uniqueStorage()._batteryRanOut = nil}

  /// Sleep cycles (rem-to-rem) - not available in Sleep Plus
  var sleepCycles: [Data_PbSleepCycle] {
    get {return _storage._sleepCycles}
    set {_uniqueStorage()._sleepCycles = newValue}
  }

  /// Date for which this sleep result is for
  var sleepResultDate: PbDate {
    get {return _storage._sleepResultDate ?? PbDate()}
    set {_uniqueStorage()._sleepResultDate = newValue}
  }
  /// Returns true if `sleepResultDate` has been explicitly set.
  var hasSleepResultDate: Bool {return _storage._sleepResultDate != nil}
  /// Clears the value of `sleepResultDate`. Subsequent reads from it will return its default value.
  mutating func clearSleepResultDate() {_uniqueStorage()._sleepResultDate = nil}

  /// Date and time of the result created
  var createdTimestamp: PbSystemDateTime {
    get {return _storage._createdTimestamp ?? PbSystemDateTime()}
    set {_uniqueStorage()._createdTimestamp = newValue}
  }
  /// Returns true if `createdTimestamp` has been explicitly set.
  var hasCreatedTimestamp: Bool {return _storage._createdTimestamp != nil}
  /// Clears the value of `createdTimestamp`. Subsequent reads from it will return its default value.
  mutating func clearCreatedTimestamp() {_uniqueStorage()._createdTimestamp = nil}

  /// Initial sleep start and end times, before any edits to sleep data
  var originalSleepRange: PbLocalDateTimeRange {
    get {return _storage._originalSleepRange ?? PbLocalDateTimeRange()}
    set {_uniqueStorage()._originalSleepRange = newValue}
  }
  /// Returns true if `originalSleepRange` has been explicitly set.
  var hasOriginalSleepRange: Bool {return _storage._originalSleepRange != nil}
  /// Clears the value of `originalSleepRange`. Subsequent reads from it will return its default value.
  mutating func clearOriginalSleepRange() {_uniqueStorage()._originalSleepRange = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Data_PbSleepWakeState: @unchecked Sendable {}
extension Data_PbSleepWakePhase: @unchecked Sendable {}
extension Data_PbSleepCycle: @unchecked Sendable {}
extension Data_PbSleepAnalysisResult: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "data"

extension Data_PbSleepWakeState: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    -6: .same(proto: "PB_NONREM3"),
    -5: .same(proto: "PB_NONREM12"),
    -3: .same(proto: "PB_REM"),
    -2: .same(proto: "PB_WAKE"),
    0: .same(proto: "PB_UNKNOWN"),
  ]
}

extension Data_PbSleepWakePhase: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PbSleepWakePhase"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "seconds_from_sleep_start"),
    2: .standard(proto: "sleepwake_state"),
  ]

  public var isInitialized: Bool {
    if self._secondsFromSleepStart == nil {return false}
    if self._sleepwakeState == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self._secondsFromSleepStart) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self._sleepwakeState) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._secondsFromSleepStart {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._sleepwakeState {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Data_PbSleepWakePhase, rhs: Data_PbSleepWakePhase) -> Bool {
    if lhs._secondsFromSleepStart != rhs._secondsFromSleepStart {return false}
    if lhs._sleepwakeState != rhs._sleepwakeState {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Data_PbSleepCycle: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PbSleepCycle"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "seconds_from_sleep_start"),
    2: .standard(proto: "sleep_depth_start"),
  ]

  public var isInitialized: Bool {
    if self._secondsFromSleepStart == nil {return false}
    if self._sleepDepthStart == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self._secondsFromSleepStart) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self._sleepDepthStart) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._secondsFromSleepStart {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._sleepDepthStart {
      try visitor.visitSingularFloatField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Data_PbSleepCycle, rhs: Data_PbSleepCycle) -> Bool {
    if lhs._secondsFromSleepStart != rhs._secondsFromSleepStart {return false}
    if lhs._sleepDepthStart != rhs._sleepDepthStart {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Data_PbSleepAnalysisResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PbSleepAnalysisResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sleep_start_time"),
    2: .standard(proto: "sleep_end_time"),
    3: .standard(proto: "last_modified"),
    4: .standard(proto: "sleep_goal_minutes"),
    5: .standard(proto: "sleepwake_phases"),
    6: .standard(proto: "snooze_time"),
    7: .standard(proto: "alarm_time"),
    8: .standard(proto: "sleep_start_offset_seconds"),
    9: .standard(proto: "sleep_end_offset_seconds"),
    10: .standard(proto: "user_sleep_rating"),
    11: .standard(proto: "recording_device"),
    12: .standard(proto: "battery_ran_out"),
    13: .standard(proto: "sleep_cycles"),
    14: .standard(proto: "sleep_result_date"),
    15: .standard(proto: "created_timestamp"),
    16: .standard(proto: "original_sleep_range"),
  ]

  fileprivate class _StorageClass {
    var _sleepStartTime: PbLocalDateTime? = nil
    var _sleepEndTime: PbLocalDateTime? = nil
    var _lastModified: PbSystemDateTime? = nil
    var _sleepGoalMinutes: UInt32? = nil
    var _sleepwakePhases: [Data_PbSleepWakePhase] = []
    var _snoozeTime: [PbLocalDateTime] = []
    var _alarmTime: PbLocalDateTime? = nil
    var _sleepStartOffsetSeconds: Int32? = nil
    var _sleepEndOffsetSeconds: Int32? = nil
    var _userSleepRating: PbSleepUserRating? = nil
    var _recordingDevice: PbDeviceId? = nil
    var _batteryRanOut: Bool? = nil
    var _sleepCycles: [Data_PbSleepCycle] = []
    var _sleepResultDate: PbDate? = nil
    var _createdTimestamp: PbSystemDateTime? = nil
    var _originalSleepRange: PbLocalDateTimeRange? = nil

    #if swift(>=5.10)
      // This property is used as the initial default value for new instances of the type.
      // The type itself is protecting the reference to its storage via CoW semantics.
      // This will force a copy to be made of this reference when the first mutation occurs;
      // hence, it is safe to mark this as `nonisolated(unsafe)`.
      static nonisolated(unsafe) let defaultInstance = _StorageClass()
    #else
      static let defaultInstance = _StorageClass()
    #endif

    private init() {}

    init(copying source: _StorageClass) {
      _sleepStartTime = source._sleepStartTime
      _sleepEndTime = source._sleepEndTime
      _lastModified = source._lastModified
      _sleepGoalMinutes = source._sleepGoalMinutes
      _sleepwakePhases = source._sleepwakePhases
      _snoozeTime = source._snoozeTime
      _alarmTime = source._alarmTime
      _sleepStartOffsetSeconds = source._sleepStartOffsetSeconds
      _sleepEndOffsetSeconds = source._sleepEndOffsetSeconds
      _userSleepRating = source._userSleepRating
      _recordingDevice = source._recordingDevice
      _batteryRanOut = source._batteryRanOut
      _sleepCycles = source._sleepCycles
      _sleepResultDate = source._sleepResultDate
      _createdTimestamp = source._createdTimestamp
      _originalSleepRange = source._originalSleepRange
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._sleepStartTime == nil {return false}
      if _storage._sleepEndTime == nil {return false}
      if _storage._lastModified == nil {return false}
      if _storage._sleepGoalMinutes == nil {return false}
      if let v = _storage._sleepStartTime, !v.isInitialized {return false}
      if let v = _storage._sleepEndTime, !v.isInitialized {return false}
      if let v = _storage._lastModified, !v.isInitialized {return false}
      if !SwiftProtobuf.Internal.areAllInitialized(_storage._sleepwakePhases) {return false}
      if !SwiftProtobuf.Internal.areAllInitialized(_storage._snoozeTime) {return false}
      if let v = _storage._alarmTime, !v.isInitialized {return false}
      if let v = _storage._recordingDevice, !v.isInitialized {return false}
      if !SwiftProtobuf.Internal.areAllInitialized(_storage._sleepCycles) {return false}
      if let v = _storage._sleepResultDate, !v.isInitialized {return false}
      if let v = _storage._createdTimestamp, !v.isInitialized {return false}
      if let v = _storage._originalSleepRange, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._sleepStartTime) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._sleepEndTime) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._lastModified) }()
        case 4: try { try decoder.decodeSingularUInt32Field(value: &_storage._sleepGoalMinutes) }()
        case 5: try { try decoder.decodeRepeatedMessageField(value: &_storage._sleepwakePhases) }()
        case 6: try { try decoder.decodeRepeatedMessageField(value: &_storage._snoozeTime) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._alarmTime) }()
        case 8: try { try decoder.decodeSingularInt32Field(value: &_storage._sleepStartOffsetSeconds) }()
        case 9: try { try decoder.decodeSingularInt32Field(value: &_storage._sleepEndOffsetSeconds) }()
        case 10: try { try decoder.decodeSingularEnumField(value: &_storage._userSleepRating) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._recordingDevice) }()
        case 12: try { try decoder.decodeSingularBoolField(value: &_storage._batteryRanOut) }()
        case 13: try { try decoder.decodeRepeatedMessageField(value: &_storage._sleepCycles) }()
        case 14: try { try decoder.decodeSingularMessageField(value: &_storage._sleepResultDate) }()
        case 15: try { try decoder.decodeSingularMessageField(value: &_storage._createdTimestamp) }()
        case 16: try { try decoder.decodeSingularMessageField(value: &_storage._originalSleepRange) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._sleepStartTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._sleepEndTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._lastModified {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      try { if let v = _storage._sleepGoalMinutes {
        try visitor.visitSingularUInt32Field(value: v, fieldNumber: 4)
      } }()
      if !_storage._sleepwakePhases.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._sleepwakePhases, fieldNumber: 5)
      }
      if !_storage._snoozeTime.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._snoozeTime, fieldNumber: 6)
      }
      try { if let v = _storage._alarmTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      } }()
      try { if let v = _storage._sleepStartOffsetSeconds {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 8)
      } }()
      try { if let v = _storage._sleepEndOffsetSeconds {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 9)
      } }()
      try { if let v = _storage._userSleepRating {
        try visitor.visitSingularEnumField(value: v, fieldNumber: 10)
      } }()
      try { if let v = _storage._recordingDevice {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      } }()
      try { if let v = _storage._batteryRanOut {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 12)
      } }()
      if !_storage._sleepCycles.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._sleepCycles, fieldNumber: 13)
      }
      try { if let v = _storage._sleepResultDate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
      } }()
      try { if let v = _storage._createdTimestamp {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 15)
      } }()
      try { if let v = _storage._originalSleepRange {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 16)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Data_PbSleepAnalysisResult, rhs: Data_PbSleepAnalysisResult) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._sleepStartTime != rhs_storage._sleepStartTime {return false}
        if _storage._sleepEndTime != rhs_storage._sleepEndTime {return false}
        if _storage._lastModified != rhs_storage._lastModified {return false}
        if _storage._sleepGoalMinutes != rhs_storage._sleepGoalMinutes {return false}
        if _storage._sleepwakePhases != rhs_storage._sleepwakePhases {return false}
        if _storage._snoozeTime != rhs_storage._snoozeTime {return false}
        if _storage._alarmTime != rhs_storage._alarmTime {return false}
        if _storage._sleepStartOffsetSeconds != rhs_storage._sleepStartOffsetSeconds {return false}
        if _storage._sleepEndOffsetSeconds != rhs_storage._sleepEndOffsetSeconds {return false}
        if _storage._userSleepRating != rhs_storage._userSleepRating {return false}
        if _storage._recordingDevice != rhs_storage._recordingDevice {return false}
        if _storage._batteryRanOut != rhs_storage._batteryRanOut {return false}
        if _storage._sleepCycles != rhs_storage._sleepCycles {return false}
        if _storage._sleepResultDate != rhs_storage._sleepResultDate {return false}
        if _storage._createdTimestamp != rhs_storage._createdTimestamp {return false}
        if _storage._originalSleepRange != rhs_storage._originalSleepRange {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}