// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <Foundation/Foundation.h>

#include <darling-testsuite/assertion.h>

int main() {
    // #include <Foundation/NSConnection.h>
    assert_equals_NSString(@"NSFailedAuthenticationException", NSFailedAuthenticationException);

    // #include <Foundation/NSTimeZone.h>
#if MIN_MACOS(VERSION_10_5)
    assert_equals_NSString(@"kCFTimeZoneSystemTimeZoneDidChangeNotification", NSSystemTimeZoneDidChangeNotification);
#endif

    // #include <Foundation/NSURL.h>
#if MIN_MACOS(VERSION_10_9)
    assert_equals_NSString(@"NSURLUbiquitousItemDownloadingStatusNotDownloaded", NSURLUbiquitousItemDownloadingStatusNotDownloaded);
#endif
}
