// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <CoreText/CoreText.h>

#include <darling-testsuite/assertion.h>

int main() {
    // #include <CoreText/CTFont.h>
#if MIN_MACOS(VERSION_10_5)
    assert_equals_CFStringRef(CFSTR("CTFontCopyrightName"), kCTFontCopyrightNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontFamilyName"), kCTFontFamilyNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontSubFamilyName"), kCTFontSubFamilyNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontSubFamilyName"), kCTFontStyleNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontUniqueName"), kCTFontUniqueNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontFullName"), kCTFontFullNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontVersionName"), kCTFontVersionNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontPostScriptName"), kCTFontPostScriptNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontTrademarkName"), kCTFontTrademarkNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontManufacturerName"), kCTFontManufacturerNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontDesignerName"), kCTFontDesignerNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontDescriptionName"), kCTFontDescriptionNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontVendorURLName"), kCTFontVendorURLNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontDesignerURLName"), kCTFontDesignerURLNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontLicenseNameName"), kCTFontLicenseNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontLicenseURLName"), kCTFontLicenseURLNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontSampleTextName"), kCTFontSampleTextNameKey);
    assert_equals_CFStringRef(CFSTR("CTFontPostScriptCIDName"), kCTFontPostScriptCIDNameKey);

    assert_equals_CFStringRef(CFSTR("NSCTVariationAxisIdentifier"), kCTFontVariationAxisIdentifierKey);
    assert_equals_CFStringRef(CFSTR("NSCTVariationAxisMinimumValue"), kCTFontVariationAxisMinimumValueKey);
    assert_equals_CFStringRef(CFSTR("NSCTVariationAxisMaximumValue"), kCTFontVariationAxisMaximumValueKey);
    assert_equals_CFStringRef(CFSTR("NSCTVariationAxisDefaultValue"), kCTFontVariationAxisDefaultValueKey);
    assert_equals_CFStringRef(CFSTR("NSCTVariationAxisName"), kCTFontVariationAxisNameKey);

    assert_equals_CFStringRef(CFSTR("CTFeatureTypeIdentifier"), kCTFontFeatureTypeIdentifierKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureTypeName"), kCTFontFeatureTypeNameKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureTypeExclusive"), kCTFontFeatureTypeExclusiveKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureTypeSelectors"), kCTFontFeatureTypeSelectorsKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureSelectorIdentifier"), kCTFontFeatureSelectorIdentifierKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureSelectorName"), kCTFontFeatureSelectorNameKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureSelectorDefault"), kCTFontFeatureSelectorDefaultKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureSelectorSetting"), kCTFontFeatureSelectorSettingKey);
#endif
#if MIN_MACOS(VERSION_10_13)
    assert_equals_CFStringRef(CFSTR("NSCTVariationAxisHidden"), kCTFontVariationAxisHiddenKey);
#endif
#if MIN_MACOS(VERSION_10_15)
    assert_equals_CFStringRef(CFSTR("CTFeatureSampleText"), kCTFontFeatureSampleTextKey);
    assert_equals_CFStringRef(CFSTR("CTFeatureTooltipText"), kCTFontFeatureTooltipTextKey);
#endif

    // #include <CoreText/CTFontDescriptor.h>
#if MIN_MACOS(VERSION_10_5)
    assert_equals_CFStringRef(CFSTR("NSFontNameAttribute"), kCTFontNameAttribute);
    assert_equals_CFStringRef(CFSTR("NSFontVisibleNameAttribute"), kCTFontDisplayNameAttribute);
    assert_equals_CFStringRef(CFSTR("NSFontFamilyAttribute"), kCTFontFamilyNameAttribute);
    assert_equals_CFStringRef(CFSTR("NSFontFaceAttribute"), kCTFontStyleNameAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontTraitsAttribute"), kCTFontTraitsAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontVariationAttribute"), kCTFontVariationAttribute);
    assert_equals_CFStringRef(CFSTR("NSFontSizeAttribute"), kCTFontSizeAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontMatrixAttribute"), kCTFontMatrixAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontCascadeListAttribute"), kCTFontCascadeListAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontCharacterSetAttribute"), kCTFontCharacterSetAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontLanguagesAttribute"), kCTFontLanguagesAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontBaselineAdjustAttribute"), kCTFontBaselineAdjustAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontMacintoshEncodingsAttribute"), kCTFontMacintoshEncodingsAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontFeaturesAttribute"), kCTFontFeaturesAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontFeatureSettingsAttribute"), kCTFontFeatureSettingsAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontFixedAdvanceAttribute"), kCTFontFixedAdvanceAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontOrientationAttribute"), kCTFontOrientationAttribute);
#endif
#if MIN_MACOS(VERSION_10_6)
    assert_equals_CFStringRef(CFSTR("NSCTFontFileURLAttribute"), kCTFontURLAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontFormatAttribute"), kCTFontFormatAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontRegistrationScopeAttribute"), kCTFontRegistrationScopeAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontPriorityAttribute"), kCTFontPriorityAttribute);
    assert_equals_CFStringRef(CFSTR("NSCTFontEnabledAttribute"), kCTFontEnabledAttribute);
#endif

    // #include <CoreText/CTFontManager.h>
#if MIN_MACOS(VERSION_10_6)
    assert_equals_CFStringRef(CFSTR("CTFontManagerFontChangedNotification"), kCTFontManagerRegisteredFontsChangedNotification);
#endif
}
