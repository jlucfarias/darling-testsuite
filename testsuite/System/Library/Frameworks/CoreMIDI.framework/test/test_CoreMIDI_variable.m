// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <CoreMIDI/CoreMIDI.h>

#include <darling-testsuite/assertion.h>
#include <darling-testsuite/availability.h>

int main() {
    // #include <CoreMIDI/MIDIServices.h>
    assert_equals_CFStringRef(nil, kMIDIPropertyManufacturer);
    assert_equals_CFStringRef(nil, kMIDIPropertyAdvanceScheduleTimeMuSec);
#if MIN_MACOS(VERSION_10_1)
    assert_equals_CFStringRef(nil, kMIDIPropertyConnectionUniqueID);
#endif
#if MIN_MACOS(VERSION_10_2)
    assert_equals_CFStringRef(nil, kMIDIPropertyDriverVersion);
#endif
#if MIN_MACOS(VERSION_10_4)
    assert_equals_CFStringRef(nil, kMIDIPropertyDisplayName);
#endif
}
