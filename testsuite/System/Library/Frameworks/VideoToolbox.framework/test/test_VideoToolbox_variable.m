// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <VideoToolbox/VideoToolbox.h>

#include <darling-testsuite/assertion.h>

int main() {
#if MIN_MACOS(VERSION_10_8)
    assert_equals_CFStringRef(CFSTR("MaxKeyFrameIntervalDuration"), kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration);
    assert_equals_CFStringRef(CFSTR("DataRateLimits"), kVTCompressionPropertyKey_DataRateLimits);
    assert_equals_CFStringRef(CFSTR("MaxFrameDelayCount"), kVTCompressionPropertyKey_MaxFrameDelayCount);
    assert_equals_CFStringRef(CFSTR("ExpectedFrameRate"), kVTCompressionPropertyKey_ExpectedFrameRate);
#endif
#if MIN_MACOS(VERSION_10_9)
    assert_equals_CFStringRef(CFSTR("H264_High_AutoLevel"), kVTProfileLevel_H264_High_AutoLevel);

    assert_equals_CFStringRef(CFSTR("RequireHardwareAcceleratedVideoEncoder"), kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoder);
#endif
}
