// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <AVFoundation/AVFoundation.h>

#include <darling-testsuite/assertion.h>
#include <darling-testsuite/availability.h>

void test_AVFoundation_AVMetadataFormat_h();

int main() {
    // #include <AVFoundation/AVMediaFormat.h>
#if MIN_MACOS(VERSION_10_7)
    assert_equals_NSString(@"soun", AVMediaTypeAudio);
    assert_equals_NSString(@"muxx", AVMediaTypeMuxed);
    assert_equals_NSString(@"vide", AVMediaTypeVideo);
#endif

    // #include <AVFoundation/AVMetadataFormat.h>
    test_AVFoundation_AVMetadataFormat_h();

    // #include <AVFoundation/AVVideoSettings.h>
#if MIN_MACOS(VERSION_10_7)
    assert_equals_NSString(@"AVVideoScalingModeKey", AVVideoScalingModeKey);
    assert_equals_NSString(@"AVVideoScalingModeResizeAspectFill", AVVideoScalingModeResizeAspectFill);
#endif
}

void test_AVFoundation_AVMetadataFormat_h() {
#if MIN_MACOS(VERSION_10_7)
    assert_equals_NSString(@"albumName", AVMetadataCommonKeyAlbumName);
    assert_equals_NSString(@"artist", AVMetadataCommonKeyArtist);
    assert_equals_NSString(@"artwork", AVMetadataCommonKeyArtwork);
    assert_equals_NSString(@"description", AVMetadataCommonKeyDescription);
    assert_equals_NSString(@"title", AVMetadataCommonKeyTitle);

    assert_equals_NSString(@"WXXX", AVMetadataID3MetadataKeyUserURL);
#endif
}
