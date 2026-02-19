// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <WebKit/WebKit.h>

#include <darling-testsuite/assertion.h>

int main() {
    // #include <WebKit/WebKitErrors.h>
#if MIN_MACOS(VERSION_10_3)
    assert_equals_NSString(@"WebKitErrorDomain", WebKitErrorDomain);
#endif

    // #include <WebKit/WebView.h>
#if MIN_MACOS(VERSION_10_3)
    assert_equals_NSString(@"WebElementLinkLabel", WebElementLinkLabelKey);
    assert_equals_NSString(@"WebElementImage", WebElementImageKey);
    assert_equals_NSString(@"WebElementLinkURL", WebElementLinkURLKey);
    assert_equals_NSString(@"WebElementTargetFrame", WebElementLinkTargetFrameKey);
    assert_equals_NSString(@"WebElementLinkTitle", WebElementLinkTitleKey);
    assert_equals_NSString(@"WebViewDidChangeSelectionNotification", WebViewDidChangeSelectionNotification);
#endif
}
