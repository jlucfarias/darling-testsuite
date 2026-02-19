// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <CoreImage/CoreImage.h>

#include <darling-testsuite/assertion.h>
#include <darling-testsuite/availability.h>

int main() {
    // #include <CoreImage/CIFilter.h>
#if MIN_MACOS(VERSION_10_5)
    assert_equals_NSString(@"inputRadius", kCIInputRadiusKey);
#endif
}
