#include <AppKit/AppKit.h>

#include <darling-testsuite/assertion.h>

int main() {
    // #include <AppKit/NSApplication.h>
#if MIN_MACOS(VERSION_10_6)
    assert_equals_nsuinteger("NSApplicationPresentationDefault", (NSUInteger)(0), NSApplicationPresentationDefault);
    assert_equals_nsuinteger("NSApplicationPresentationAutoHideDock", (NSUInteger)(1 << 0), NSApplicationPresentationAutoHideDock);
    assert_equals_nsuinteger("NSApplicationPresentationHideDock", (NSUInteger)(1 << 1), NSApplicationPresentationHideDock);
    assert_equals_nsuinteger("NSApplicationPresentationAutoHideMenuBar", (NSUInteger)(1 << 2), NSApplicationPresentationAutoHideMenuBar);
    assert_equals_nsuinteger("NSApplicationPresentationHideMenuBar", (NSUInteger)(1 << 3), NSApplicationPresentationHideMenuBar);
    assert_equals_nsuinteger("NSApplicationPresentationDisableAppleMenu", (NSUInteger)(1 << 4), NSApplicationPresentationDisableAppleMenu);
    assert_equals_nsuinteger("NSApplicationPresentationDisableProcessSwitching", (NSUInteger)(1 << 5), NSApplicationPresentationDisableProcessSwitching);
    assert_equals_nsuinteger("NSApplicationPresentationDisableForceQuit", (NSUInteger)(1 << 6), NSApplicationPresentationDisableForceQuit);
    assert_equals_nsuinteger("NSApplicationPresentationDisableSessionTermination", (NSUInteger)(1 << 7), NSApplicationPresentationDisableSessionTermination);
    assert_equals_nsuinteger("NSApplicationPresentationDisableHideApplication", (NSUInteger)(1 << 8), NSApplicationPresentationDisableHideApplication);
    assert_equals_nsuinteger("NSApplicationPresentationDisableMenuBarTransparency", (NSUInteger)(1 << 9), NSApplicationPresentationDisableMenuBarTransparency);
#endif
#if MIN_MACOS(VERSION_10_7)
    assert_equals_nsuinteger("NSApplicationPresentationFullScreen", (NSUInteger)(1 << 10), NSApplicationPresentationFullScreen);
    assert_equals_nsuinteger("NSApplicationPresentationAutoHideToolbar", (NSUInteger)(1 << 11), NSApplicationPresentationAutoHideToolbar);
#endif
#if MIN_MACOS(VERSION_10_11) // 10.11.2
    assert_equals_nsuinteger("NSApplicationPresentationDisableCursorLocationAssistance", (NSUInteger)(1 << 12), NSApplicationPresentationDisableCursorLocationAssistance);
#endif
}
