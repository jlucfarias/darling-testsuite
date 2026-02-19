// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <AppKit/AppKit.h>

#include <darling-testsuite/assertion.h>
#include <darling-testsuite/availability.h>

void test_AppKit_NSApplication_h(void);
void test_AppKit_NSFontDescriptor_h(void);
void test_AppKit_NSKeyValueBinding_h(void);
void test_AppKit_NSPopover_h(void);
void test_AppKit_NSPrintInfo_h(void);
void test_AppKit_NSSharingService_h(void);
void test_AppKit_NSSpeechSynthesizer_h(void);

extern const NSString* NSTextInputReplacementRangeAttributeName;

int main() {
    // #include <AppKit/???>
    // It is a private symbol
    assert_equals_NSString(@"NSTextInputReplacementRangeAttributeName", NSTextInputReplacementRangeAttributeName);

    // #include <AppKit/NSAccessibilityConstants.h>
#if MIN_MACOS(VERSION_10_4)
    assert_equals_NSString(@"AXMarkedMisspelled", NSAccessibilityMarkedMisspelledTextAttribute);
#endif
#if MIN_MACOS(VERSION_10_6)
    assert_equals_NSString(@"AXLevelIndicator", NSAccessibilityLevelIndicatorRole);
#endif
#if MIN_MACOS(VERSION_10_9)
    assert_equals_NSString(@"AXShowAlternateUI", NSAccessibilityShowAlternateUIAction);
    assert_equals_NSString(@"AXShowDefaultUI", NSAccessibilityShowDefaultUIAction);
#endif

    // #include <AppKit/NSApplication.h>
    test_AppKit_NSApplication_h();

    // #include <AppKit/NSAttributedString.h>
    assert_equals_NSString(@"NSMarkedClauseSegment", NSMarkedClauseSegmentAttributeName);

    // #include <AppKit/NSCell.h>
    assert_equals_NSString(@"NSControlTintDidChangeNotification", NSControlTintDidChangeNotification);

    // #include <AppKit/NSColor.h>
    assert_equals_NSString(@"NSSystemColorsDidChangeNotification" , NSSystemColorsDidChangeNotification);

    // #include <AppKit/NSDraggingItem.h>
#if MIN_MACOS(VERSION_10_7)
    assert_equals_NSString(@"icon", NSDraggingImageComponentIconKey);
    assert_equals_NSString(@"label", NSDraggingImageComponentLabelKey);
#endif

    // #include <AppKit/NSFontDescriptor.h>
    test_AppKit_NSFontDescriptor_h();

    // #include <AppKit/NSGraphics.h>
    assert_equals_NSString(@"NSCustomColorSpace", NSCustomColorSpace);

    // #include <AppKit/NSKeyValueBinding.h>
    test_AppKit_NSKeyValueBinding_h();

    // #include <AppKit/NSMenu.h>
    assert_equals_NSString(@"NSMenuDidSendActionNotification", NSMenuDidSendActionNotification);
    assert_equals_NSString(@"NSMenuWillSendActionNotification", NSMenuWillSendActionNotification);

    // #include <AppKit/NSPasteboard.h>
    test_AppKit_NSPasteboard_h();

    // #include <AppKit/NSPopover.h>
    test_AppKit_NSPopover_h();

    // #include <AppKit/NSPrintInfo.h>
    test_AppKit_NSPrintInfo_h();

    // #include <AppKit/NSScreen.h>
#if MIN_MACOS(VERSION_10_6)
    assert_equals_NSString(@"NSScreenColorSpaceDidChangeNotification", NSScreenColorSpaceDidChangeNotification);
#endif

    // #include <AppKit/NSSharingService.h>
    test_AppKit_NSSharingService_h();

    // #include <AppKit/NSSpeechSynthesizer.h>
    test_AppKit_NSSpeechSynthesizer_h();

    // #include <AppKit/NSWorkspace.h>
    assert_equals_NSString(@"NSWorkspaceDidDeactivateApplicationNotification", NSWorkspaceDidDeactivateApplicationNotification);
    assert_equals_NSString(@"NSWorkspaceSessionDidBecomeActiveNotification", NSWorkspaceSessionDidBecomeActiveNotification);
#if MIN_MACOS(VERSION_10_6)
    assert_equals_NSString(@"NSWorkspaceDidActivateApplicationNotification", NSWorkspaceDidActivateApplicationNotification);
#endif
}


void test_AppKit_NSApplication_h(void) {
    assert_equals_NSString(@"NSApplicationLaunchIsDefaultLaunchKey", NSApplicationLaunchIsDefaultLaunchKey);

    // NSApplicationPresentationOptions
    assert_equals_NSUInteger("NSApplicationPresentationDefault",                         0,       NSApplicationPresentationDefault);
    assert_equals_NSUInteger("NSApplicationPresentationAutoHideDock",                    1 << 0,  NSApplicationPresentationAutoHideDock);
    assert_equals_NSUInteger("NSApplicationPresentationHideDock",                        1 << 1,  NSApplicationPresentationHideDock);
    assert_equals_NSUInteger("NSApplicationPresentationAutoHideMenuBar",                 1 << 2,  NSApplicationPresentationAutoHideMenuBar);
    assert_equals_NSUInteger("NSApplicationPresentationHideMenuBar",                     1 << 3,  NSApplicationPresentationHideMenuBar);
    assert_equals_NSUInteger("NSApplicationPresentationDisableAppleMenu",                1 << 4,  NSApplicationPresentationDisableAppleMenu);
    assert_equals_NSUInteger("NSApplicationPresentationDisableProcessSwitching",         1 << 5,  NSApplicationPresentationDisableProcessSwitching);
    assert_equals_NSUInteger("NSApplicationPresentationDisableForceQuit",                1 << 6,  NSApplicationPresentationDisableForceQuit);
    assert_equals_NSUInteger("NSApplicationPresentationDisableSessionTermination",       1 << 7,  NSApplicationPresentationDisableSessionTermination);
    assert_equals_NSUInteger("NSApplicationPresentationDisableHideApplication",          1 << 8,  NSApplicationPresentationDisableHideApplication);
    assert_equals_NSUInteger("NSApplicationPresentationDisableMenuBarTransparency",      1 << 9,  NSApplicationPresentationDisableMenuBarTransparency);
    assert_equals_NSUInteger("NSApplicationPresentationFullScreen",                      1 << 10, NSApplicationPresentationFullScreen);
    assert_equals_NSUInteger("NSApplicationPresentationAutoHideToolbar",                 1 << 11, NSApplicationPresentationAutoHideToolbar);
    assert_equals_NSUInteger("NSApplicationPresentationDisableCursorLocationAssistance", 1 << 12, NSApplicationPresentationDisableCursorLocationAssistance);
}

void test_AppKit_NSFontDescriptor_h(void) {
    assert_equals_NSString(@"NSFontFamilyAttribute", NSFontFamilyAttribute);
    assert_equals_NSString(@"NSFontNameAttribute", NSFontNameAttribute);
    assert_equals_NSString(@"NSFontFaceAttribute", NSFontFaceAttribute);
    assert_equals_NSString(@"NSFontSizeAttribute", NSFontSizeAttribute);
    assert_equals_NSString(@"NSFontVisibleNameAttribute", NSFontVisibleNameAttribute);
    assert_equals_NSString(@"NSFontMatrixAttribute", NSFontMatrixAttribute);
    assert_equals_NSString(@"NSCTFontVariationAttribute", NSFontVariationAttribute);
    assert_equals_NSString(@"NSCTFontCharacterSetAttribute", NSFontCharacterSetAttribute);
    assert_equals_NSString(@"NSCTFontCascadeListAttribute", NSFontCascadeListAttribute);
    assert_equals_NSString(@"NSCTFontTraitsAttribute", NSFontTraitsAttribute);
    assert_equals_NSString(@"NSCTFontFixedAdvanceAttribute", NSFontFixedAdvanceAttribute);

#if MIN_MACOS(VERSION_10_5)
    assert_equals_NSString(@"NSCTFontFeatureSettingsAttribute", NSFontFeatureSettingsAttribute);
#endif

    assert_equals_NSString(@"CTFeatureSelectorIdentifier", NSFontFeatureSelectorIdentifierKey);
    assert_equals_NSString(@"CTFeatureTypeIdentifier", NSFontFeatureTypeIdentifierKey);

    assert_equals_NSString(@"NSCTFontSymbolicTrait", NSFontSymbolicTrait);
    assert_equals_NSString(@"NSCTFontWeightTrait", NSFontWeightTrait);
    assert_equals_NSString(@"NSCTFontProportionTrait", NSFontWidthTrait);
    assert_equals_NSString(@"NSCTFontSlantTrait", NSFontSlantTrait);
}

void test_AppKit_NSKeyValueBinding_h(void) {
    // NSBindingInfoKey
    assert_equals_NSString(@"NSObservedKeyPath", NSObservedKeyPathKey);
    assert_equals_NSString(@"NSObservedObject", NSObservedObjectKey);
    assert_equals_NSString(@"NSOptions", NSOptionsKey);
    
    // NSBindingName
    assert_equals_NSString(@"animate", NSAnimateBinding);
    assert_equals_NSString(@"contentArray", NSContentArrayBinding);
    assert_equals_NSString(@"content", NSContentBinding);
    assert_equals_NSString(@"contentObject", NSContentObjectBinding);
    assert_equals_NSString(@"contentObjects", NSContentObjectsBinding);
    assert_equals_NSString(@"contentSet", NSContentSetBinding);
    assert_equals_NSString(@"contentValues", NSContentValuesBinding);
    assert_equals_NSString(@"doubleClickTarget", NSDoubleClickTargetBinding);
    assert_equals_NSString(@"enabled", NSEnabledBinding);
    assert_equals_NSString(@"fontBold", NSFontBoldBinding);
    assert_equals_NSString(@"fontItalic", NSFontItalicBinding);
    assert_equals_NSString(@"hidden", NSHiddenBinding);
    assert_equals_NSString(@"image", NSImageBinding);
    assert_equals_NSString(@"selectedIndex", NSSelectedIndexBinding);
    assert_equals_NSString(@"selectedObject", NSSelectedObjectBinding);
    assert_equals_NSString(@"selectedObjects", NSSelectedObjectsBinding);
    assert_equals_NSString(@"selectedTag", NSSelectedTagBinding);
    assert_equals_NSString(@"selectedValue", NSSelectedValueBinding);
    assert_equals_NSString(@"selectionIndexes", NSSelectionIndexesBinding);
    assert_equals_NSString(@"title", NSTitleBinding);
    assert_equals_NSString(@"value", NSValueBinding);
    assert_equals_NSString(@"visible", NSVisibleBinding);
    assert_equals_NSString(@"toolTip", NSToolTipBinding);
    assert_equals_NSString(@"editable", NSEditableBinding);

    // NSBindingOption
    assert_equals_NSString(@"NSInsertsNullPlaceholder", NSInsertsNullPlaceholderBindingOption);
    assert_equals_NSString(@"NSValidatesImmediately", NSValidatesImmediatelyBindingOption);
    assert_equals_NSString(@"NSNotApplicablePlaceholder", NSNotApplicablePlaceholderBindingOption);
    assert_equals_NSString(@"NSNullPlaceholder", NSNullPlaceholderBindingOption);
    assert_equals_NSString(@"NSNoSelectionPlaceholder", NSNoSelectionPlaceholderBindingOption);
    assert_equals_NSString(@"NSPredicateFormat", NSPredicateFormatBindingOption);
    assert_equals_NSString(@"NSCreatesSortDescriptor", NSCreatesSortDescriptorBindingOption);
    assert_equals_NSString(@"NSRaisesForNotApplicableKeys", NSRaisesForNotApplicableKeysBindingOption);
    assert_equals_NSString(@"NSAllowsEditingMultipleValuesSelection", NSAllowsEditingMultipleValuesSelectionBindingOption);
    assert_equals_NSString(@"NSValueTransformerName", NSValueTransformerNameBindingOption);
    assert_equals_NSString(@"NSValueTransformer", NSValueTransformerBindingOption);
    assert_equals_NSString(@"NSConditionallySetsEnabled", NSConditionallySetsEnabledBindingOption);
    assert_equals_NSString(@"NSConditionallySetsEditable", NSConditionallySetsEditableBindingOption);
    assert_equals_NSString(@"NSContinuouslyUpdatesValue", NSContinuouslyUpdatesValueBindingOption);
    assert_equals_NSString(@"NSDisplayPattern", NSDisplayPatternBindingOption);
}

void test_AppKit_NSPasteboard_h(void) {
    assert_equals_NSString(@"NSMenuWillSendActionNotification", NSMenuWillSendActionNotification);

#if MIN_MACOS(VERSION_10_0)
    assert_equals_NSString(@"Apple InkText pasteboard type", NSInkTextPboardType);
#endif
#if MIN_MACOS(VERSION_10_5)
    assert_equals_NSString(@"Apple multiple text selection pasteboard type", NSMultipleTextSelectionPboardType);
#endif
#if MIN_MACOS(VERSION_10_6)
    assert_equals_NSString(@"com.apple.cocoa.pasteboard.multiple-text-selection", NSPasteboardTypeMultipleTextSelection);
#endif
#if MIN_MACOS(VERSION_10_13)
    assert_equals_NSString(@"public.url", NSPasteboardTypeURL);
#endif
}

void test_AppKit_NSPopover_h(void) {
#if MIN_MACOS(VERSION_10_7)
    assert_equals_NSString(@"NSPopoverDidCloseNotification", NSPopoverDidCloseNotification);
    assert_equals_NSString(@"NSPopoverWillCloseNotification", NSPopoverWillCloseNotification);
    assert_equals_NSString(@"NSPopoverWillShowNotification", NSPopoverWillShowNotification);
    assert_equals_NSString(@"NSPopoverDidShowNotification", NSPopoverDidShowNotification);
#endif
}

void test_AppKit_NSPrintInfo_h(void) {
    assert_equals_NSString(@"NSScalingFactor", NSPrintScalingFactor);

#if MIN_MACOS(VERSION_10_6)
    assert_equals_NSString(@"NSJobSavingURL", NSPrintJobSavingURL);
#endif
}

void test_AppKit_NSSharingService_h(void) {
#if MIN_MACOS(VERSION_10_8)
    assert_equals_NSString(@"com.apple.share.System.add-to-iphoto", NSSharingServiceNameAddToIPhoto);
    assert_equals_NSString(@"com.apple.share.System.add-to-safari-reading-list", NSSharingServiceNameAddToSafariReadingList);
    assert_equals_NSString(@"com.apple.messages.ShareExtension";, NSSharingServiceNameComposeMessage);

    assert_equals_NSString(@"com.apple.share.Facebook.post", NSSharingServiceNamePostOnFacebook);
    assert_equals_NSString(@"com.apple.share.LinkedIn.post", NSSharingServiceNamePostOnLinkedIn);
    assert_equals_NSString(@"com.apple.share.SinaWeibo.post", NSSharingServiceNamePostOnSinaWeibo);
    assert_equals_NSString(@"com.apple.share.TencentWeibo.post", NSSharingServiceNamePostOnTencentWeibo);
    assert_equals_NSString(@"com.apple.share.Twitter.post", NSSharingServiceNamePostOnTwitter);
#endif
}

void test_AppKit_NSSpeechSynthesizer_h(void) {
#if MIN_MACOS(VERSION_10_3)
    // NSVoiceGenderName
    assert_equals_NSString(@"VoiceGenderFemale", NSVoiceGenderFemale);
    assert_equals_NSString(@"VoiceGenderMale", NSVoiceGenderMale);

    // NSVoiceAttributeKey
    assert_equals_NSString(@"VoiceName", NSVoiceName);
    assert_equals_NSString(@"VoiceGender", NSVoiceGender);
#endif
#if MIN_MACOS(VERSION_10_5)
    // NSVoiceAttributeKey
    assert_equals_NSString(@"VoiceLocaleIdentifier",NSVoiceLocaleIdentifier);

    // NSSpeechPropertyKey
    assert_equals_NSString(@"rate", NSSpeechRateProperty);
    assert_equals_NSString(@"pbas", NSSpeechPitchBaseProperty);
    assert_equals_NSString(@"volm", NSSpeechVolumeProperty);
#endif
}
