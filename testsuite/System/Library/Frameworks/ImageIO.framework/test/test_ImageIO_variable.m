// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <ImageIO/ImageIO.h>

#include <darling-testsuite/assertion.h>

int main() {
    // #include <ImageIO/CGImageSource.h>
#if MIN_MACOS(VERSION_10_4)
    assert_equals_CFStringRef(CFSTR("kCGImageSourceShouldAllowFloat"), kCGImageSourceShouldAllowFloat);
#endif

    // #include <ImageIO/CGImageProperties.h>
#if MIN_MACOS(VERSION_10_4)
    assert_equals_CFStringRef(CFSTR("HasAlpha"), kCGImagePropertyHasAlpha);
#endif
}
