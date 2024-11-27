//  Copyright © 2024 Polar. All rights reserved.

import Foundation
import RxSwift

public protocol PolarFirmwareUpdateApi {
    /**
     * Updates firmware to given device.
     *
     * - Parameter identifier: Polar device ID or BT address
     * - Returns: Observable emitting status of firmware update
     */
    func updateFirmware(_ identifier: String) -> Observable<FirmwareUpdateStatus>
    
    /**
     * Checks if firmware update is available
     *
     * - Parameter identifier: Polar device ID or BT address
     * - Returns: Single status of firmware update
     */
    func checkForFirmwareUpdate(_ identifier: String) -> RxSwift.Single<Bool>
}
