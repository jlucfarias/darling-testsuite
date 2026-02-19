// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <CoreBluetooth/CoreBluetooth.h>

#include <darling-testsuite/assertion.h>
#include <darling-testsuite/availability.h>

int main() {
    // #include <CoreBluetooth/CBAdvertisementData.h>
#if MIN_MACOS(VERSION_10_9)
    assert_equals_NSString(@"kCBAdvDataHashedServiceUUIDs", CBAdvertisementDataOverflowServiceUUIDsKey);
#endif
#if MIN_MACOS(VERSION_10_10)
    assert_equals_NSString(@"kCBAdvDataLocalName", CBAdvertisementDataLocalNameKey);
    assert_equals_NSString(@"kCBAdvDataManufacturerData", CBAdvertisementDataManufacturerDataKey);
    assert_equals_NSString(@"kCBAdvDataServiceData", CBAdvertisementDataServiceDataKey);
    assert_equals_NSString(@"kCBAdvDataServiceUUIDs", CBAdvertisementDataServiceUUIDsKey);
    assert_equals_NSString(@"kCBAdvDataTxPowerLevel", CBAdvertisementDataTxPowerLevelKey);
#endif

    // #include <CoreBluetooth/CBCentralManagerConstants.h>
#if MIN_MACOS(VERSION_10_10)
    assert_equals_NSString(@"kCBScanOptionAllowDuplicates", CBCentralManagerScanOptionAllowDuplicatesKey);
#endif

    // #include <CoreBluetooth/CBError.h>
#if MIN_MACOS(VERSION_10_10)
    assert_equals_NSString(@"CBATTErrorDomain", CBATTErrorDomain);
    assert_equals_NSString(@"CBErrorDomain", CBErrorDomain);    
#endif
}
