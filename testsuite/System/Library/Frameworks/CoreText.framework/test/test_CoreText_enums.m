#include <CoreText/CoreText.h>

#include <darling-testsuite/assertion.h>

int main() {
    // #include <CoreText/CTFont.h>
    assert_equals_uint32("kCTFontUIFontNone", (uint32_t)-1, kCTFontUIFontNone);
    assert_equals_uint32("kCTFontUIFontUser", 0, kCTFontUIFontUser);
    assert_equals_uint32("kCTFontUIFontUserFixedPitch", 1, kCTFontUIFontUserFixedPitch);
    assert_equals_uint32("kCTFontUIFontSystem", 2, kCTFontUIFontSystem);
    assert_equals_uint32("kCTFontUIFontEmphasizedSystem", 3, kCTFontUIFontEmphasizedSystem);
    assert_equals_uint32("kCTFontUIFontSmallSystem", 4, kCTFontUIFontSmallSystem);
    assert_equals_uint32("kCTFontUIFontSmallEmphasizedSystem", 5, kCTFontUIFontSmallEmphasizedSystem);
    assert_equals_uint32("kCTFontUIFontMiniSystem", 6, kCTFontUIFontMiniSystem);
    assert_equals_uint32("kCTFontUIFontMiniEmphasizedSystem", 7, kCTFontUIFontMiniEmphasizedSystem);
    assert_equals_uint32("kCTFontUIFontViews", 8, kCTFontUIFontViews);
    assert_equals_uint32("kCTFontUIFontApplication", 9, kCTFontUIFontApplication);
    assert_equals_uint32("kCTFontUIFontLabel", 10, kCTFontUIFontLabel);
    assert_equals_uint32("kCTFontUIFontMenuTitle", 11, kCTFontUIFontMenuTitle);
    assert_equals_uint32("kCTFontUIFontMenuItem", 12, kCTFontUIFontMenuItem);
    assert_equals_uint32("kCTFontUIFontMenuItemMark", 13, kCTFontUIFontMenuItemMark);
    assert_equals_uint32("kCTFontUIFontMenuItemCmdKey", 14, kCTFontUIFontMenuItemCmdKey);
    assert_equals_uint32("kCTFontUIFontWindowTitle", 15, kCTFontUIFontWindowTitle);
    assert_equals_uint32("kCTFontUIFontPushButton", 16, kCTFontUIFontPushButton);
    assert_equals_uint32("kCTFontUIFontUtilityWindowTitle", 17, kCTFontUIFontUtilityWindowTitle);
    assert_equals_uint32("kCTFontUIFontAlertHeader", 18, kCTFontUIFontAlertHeader);
    assert_equals_uint32("kCTFontUIFontSystemDetail", 19, kCTFontUIFontSystemDetail);
    assert_equals_uint32("kCTFontUIFontEmphasizedSystemDetail", 20, kCTFontUIFontEmphasizedSystemDetail);
    assert_equals_uint32("kCTFontUIFontToolbar", 21, kCTFontUIFontToolbar);
    assert_equals_uint32("kCTFontUIFontSmallToolbar", 22, kCTFontUIFontSmallToolbar);
    assert_equals_uint32("kCTFontUIFontMessage", 23, kCTFontUIFontMessage);
    assert_equals_uint32("kCTFontUIFontPalette", 24, kCTFontUIFontPalette);
    assert_equals_uint32("kCTFontUIFontToolTip", 25, kCTFontUIFontToolTip);
    assert_equals_uint32("kCTFontUIFontControlContent", 26, kCTFontUIFontControlContent);

#if MIN_MACOS(VERSION_10_5) /* Deprecated values */
    assert_equals_uint32("kCTFontUserFontType", 0, kCTFontUserFontType);
    assert_equals_uint32("kCTFontUserFixedPitchFontType", 1, kCTFontUserFixedPitchFontType);
    assert_equals_uint32("kCTFontSystemFontType", 2, kCTFontSystemFontType);
    assert_equals_uint32("kCTFontEmphasizedSystemFontType", 3, kCTFontEmphasizedSystemFontType);
    assert_equals_uint32("kCTFontSmallSystemFontType", 4, kCTFontSmallSystemFontType);
    assert_equals_uint32("kCTFontSmallEmphasizedSystemFontType", 5, kCTFontSmallEmphasizedSystemFontType);
    assert_equals_uint32("kCTFontMiniSystemFontType", 6, kCTFontMiniSystemFontType);
    assert_equals_uint32("kCTFontMiniEmphasizedSystemFontType", 7, kCTFontMiniEmphasizedSystemFontType);
    assert_equals_uint32("kCTFontViewsFontType", 8, kCTFontViewsFontType);
    assert_equals_uint32("kCTFontApplicationFontType", 9, kCTFontApplicationFontType);
    assert_equals_uint32("kCTFontLabelFontType", 10, kCTFontLabelFontType);
    assert_equals_uint32("kCTFontMenuTitleFontType", 11, kCTFontMenuTitleFontType);
    assert_equals_uint32("kCTFontMenuItemFontType", 12, kCTFontMenuItemFontType);
    assert_equals_uint32("kCTFontMenuItemMarkFontType", 13, kCTFontMenuItemMarkFontType);
    assert_equals_uint32("kCTFontMenuItemCmdKeyFontType", 14, kCTFontMenuItemCmdKeyFontType);
    assert_equals_uint32("kCTFontWindowTitleFontType", 15, kCTFontWindowTitleFontType);
    assert_equals_uint32("kCTFontPushButtonFontType", 16, kCTFontPushButtonFontType);
    assert_equals_uint32("kCTFontUtilityWindowTitleFontType", 17, kCTFontUtilityWindowTitleFontType);
    assert_equals_uint32("kCTFontAlertHeaderFontType", 18, kCTFontAlertHeaderFontType);
    assert_equals_uint32("kCTFontSystemDetailFontType", 19, kCTFontSystemDetailFontType);
    assert_equals_uint32("kCTFontEmphasizedSystemDetailFontType", 20, kCTFontEmphasizedSystemDetailFontType);
    assert_equals_uint32("kCTFontToolbarFontType", 21, kCTFontToolbarFontType);
    assert_equals_uint32("kCTFontSmallToolbarFontType", 22, kCTFontSmallToolbarFontType);
    assert_equals_uint32("kCTFontMessageFontType", 23, kCTFontMessageFontType);
    assert_equals_uint32("kCTFontPaletteFontType", 24, kCTFontPaletteFontType);
    assert_equals_uint32("kCTFontToolTipFontType", 25, kCTFontToolTipFontType);
    assert_equals_uint32("kCTFontControlContentFontType", 26, kCTFontControlContentFontType);
#endif

    assert_equals_UInt32("kCTFontTableBASE", (UInt32)('BASE'), kCTFontTableBASE);
    assert_equals_UInt32("kCTFontTableCFF", (UInt32)('CFF '), kCTFontTableCFF);
    assert_equals_UInt32("kCTFontTableDSIG", (UInt32)('DSIG'), kCTFontTableDSIG);
    assert_equals_UInt32("kCTFontTableEBDT", (UInt32)('EBDT'), kCTFontTableEBDT);
    assert_equals_UInt32("kCTFontTableEBLC", (UInt32)('EBLC'), kCTFontTableEBLC);
    assert_equals_UInt32("kCTFontTableEBSC", (UInt32)('EBSC'), kCTFontTableEBSC);
    assert_equals_UInt32("kCTFontTableGDEF", (UInt32)('GDEF'), kCTFontTableGDEF);
    assert_equals_UInt32("kCTFontTableGPOS", (UInt32)('GPOS'), kCTFontTableGPOS);
    assert_equals_UInt32("kCTFontTableGSUB", (UInt32)('GSUB'), kCTFontTableGSUB);
    assert_equals_UInt32("kCTFontTableJSTF", (UInt32)('JSTF'), kCTFontTableJSTF);
    assert_equals_UInt32("kCTFontTableLTSH", (UInt32)('LTSH'), kCTFontTableLTSH);
    assert_equals_UInt32("kCTFontTableOS2", (UInt32)('OS/2'), kCTFontTableOS2);
    assert_equals_UInt32("kCTFontTablePCLT", (UInt32)('PCLT'), kCTFontTablePCLT);
    assert_equals_UInt32("kCTFontTableVDMX", (UInt32)('VDMX'), kCTFontTableVDMX);
    assert_equals_UInt32("kCTFontTableVORG", (UInt32)('VORG'), kCTFontTableVORG);
    assert_equals_UInt32("kCTFontTableZapf", (UInt32)('Zapf'), kCTFontTableZapf);
    assert_equals_UInt32("kCTFontTableAcnt", (UInt32)('acnt'), kCTFontTableAcnt);
    assert_equals_UInt32("kCTFontTableAvar", (UInt32)('avar'), kCTFontTableAvar);
    assert_equals_UInt32("kCTFontTableBdat", (UInt32)('bdat'), kCTFontTableBdat);
    assert_equals_UInt32("kCTFontTableBhed", (UInt32)('bhed'), kCTFontTableBhed);
    assert_equals_UInt32("kCTFontTableBloc", (UInt32)('bloc'), kCTFontTableBloc);
    assert_equals_UInt32("kCTFontTableBsln", (UInt32)('bsln'), kCTFontTableBsln);
    assert_equals_UInt32("kCTFontTableCmap", (UInt32)('cmap'), kCTFontTableCmap);
    assert_equals_UInt32("kCTFontTableCvar", (UInt32)('cvar'), kCTFontTableCvar);
    assert_equals_UInt32("kCTFontTableCvt", (UInt32)('cvt '), kCTFontTableCvt);
    assert_equals_UInt32("kCTFontTableFdsc", (UInt32)('fdsc'), kCTFontTableFdsc);
    assert_equals_UInt32("kCTFontTableFeat", (UInt32)('feat'), kCTFontTableFeat);
    assert_equals_UInt32("kCTFontTableFmtx", (UInt32)('fmtx'), kCTFontTableFmtx);
    assert_equals_UInt32("kCTFontTableFpgm", (UInt32)('fpgm'), kCTFontTableFpgm);
    assert_equals_UInt32("kCTFontTableFvar", (UInt32)('fvar'), kCTFontTableFvar);
    assert_equals_UInt32("kCTFontTableGasp", (UInt32)('gasp'), kCTFontTableGasp);
    assert_equals_UInt32("kCTFontTableGlyf", (UInt32)('glyf'), kCTFontTableGlyf);
    assert_equals_UInt32("kCTFontTableGvar", (UInt32)('gvar'), kCTFontTableGvar);
    assert_equals_UInt32("kCTFontTableHdmx", (UInt32)('hdmx'), kCTFontTableHdmx);
    assert_equals_UInt32("kCTFontTableHead", (UInt32)('head'), kCTFontTableHead);
    assert_equals_UInt32("kCTFontTableHhea", (UInt32)('hhea'), kCTFontTableHhea);
    assert_equals_UInt32("kCTFontTableHmtx", (UInt32)('hmtx'), kCTFontTableHmtx);
    assert_equals_UInt32("kCTFontTableHsty", (UInt32)('hsty'), kCTFontTableHsty);
    assert_equals_UInt32("kCTFontTableJust", (UInt32)('just'), kCTFontTableJust);
    assert_equals_UInt32("kCTFontTableKern", (UInt32)('kern'), kCTFontTableKern);
    assert_equals_UInt32("kCTFontTableKerx", (UInt32)('kerx'), kCTFontTableKerx);
    assert_equals_UInt32("kCTFontTableLcar", (UInt32)('lcar'), kCTFontTableLcar);
    assert_equals_UInt32("kCTFontTableLoca", (UInt32)('loca'), kCTFontTableLoca);
    assert_equals_UInt32("kCTFontTableMaxp", (UInt32)('maxp'), kCTFontTableMaxp);
    assert_equals_UInt32("kCTFontTableMort", (UInt32)('mort'), kCTFontTableMort);
    assert_equals_UInt32("kCTFontTableMorx", (UInt32)('morx'), kCTFontTableMorx);
    assert_equals_UInt32("kCTFontTableName", (UInt32)('name'), kCTFontTableName);
    assert_equals_UInt32("kCTFontTableOpbd", (UInt32)('opbd'), kCTFontTableOpbd);
    assert_equals_UInt32("kCTFontTablePost", (UInt32)('post'), kCTFontTablePost);
    assert_equals_UInt32("kCTFontTablePrep", (UInt32)('prep'), kCTFontTablePrep);
    assert_equals_UInt32("kCTFontTableProp", (UInt32)('prop'), kCTFontTableProp);
    assert_equals_UInt32("kCTFontTableSbit", (UInt32)('sbit'), kCTFontTableSbit);
    assert_equals_UInt32("kCTFontTableSbix", (UInt32)('sbix'), kCTFontTableSbix);
    assert_equals_UInt32("kCTFontTableTrak", (UInt32)('trak'), kCTFontTableTrak);
    assert_equals_UInt32("kCTFontTableVhea", (UInt32)('vhea'), kCTFontTableVhea);
    assert_equals_UInt32("kCTFontTableVmtx", (UInt32)('vmtx'), kCTFontTableVmtx);

    assert_equals_cfoptionflags("kCTFontOptionsDefault", (CFOptionFlags)0, kCTFontOptionsDefault);
    assert_equals_cfoptionflags("kCTFontOptionsPreventAutoActivation", (CFOptionFlags)(1 << 0), kCTFontOptionsPreventAutoActivation);
    assert_equals_cfoptionflags("kCTFontOptionsPreferSystemFont", (CFOptionFlags)(1 << 2), kCTFontOptionsPreferSystemFont);

#if MIN_MACOS(VERSION_13_0)
    assert_equals_cfoptionflags("kCTFontOptionsPreventAutoDownload", (CFOptionFlags)(1 << 1), kCTFontOptionsPreventAutoDownload);
#endif

    // #include <CoreText/CTFontDescriptor.h>
    assert_equals_uint32("kCTFontOrientationDefault", 0, kCTFontOrientationDefault);
    assert_equals_uint32("kCTFontOrientationHorizontal", 1, kCTFontOrientationHorizontal);
    assert_equals_uint32("kCTFontOrientationVertical", 2, kCTFontOrientationVertical);

#if MIN_MACOS(VERSION_10_5) /* Deprecated values */
    assert_equals_uint32("kCTFontDefaultOrientation", 0, kCTFontDefaultOrientation);
    assert_equals_uint32("kCTFontHorizontalOrientation", 1, kCTFontHorizontalOrientation);
    assert_equals_uint32("kCTFontVerticalOrientation", 2, kCTFontVerticalOrientation);
#endif

    // #include <CoreText/CTFontTraits.h>
    assert_equals_int32("kCTFontClassMaskShift", 28, kCTFontClassMaskShift);

    assert_equals_uint32("kCTFontTraitItalic", (1 << 0), kCTFontTraitItalic);
    assert_equals_uint32("kCTFontTraitBold", (1 << 1), kCTFontTraitBold);
    assert_equals_uint32("kCTFontTraitExpanded", (1 << 5), kCTFontTraitExpanded);
    assert_equals_uint32("kCTFontTraitCondensed", (1 << 6), kCTFontTraitCondensed);
    assert_equals_uint32("kCTFontTraitMonoSpace", (1 << 10), kCTFontTraitMonoSpace);
    assert_equals_uint32("kCTFontTraitVertical", (1 << 11), kCTFontTraitVertical);
    assert_equals_uint32("kCTFontTraitUIOptimized", (1 << 12), kCTFontTraitUIOptimized);
    assert_equals_uint32("kCTFontTraitColorGlyphs", (1 << 13), kCTFontTraitColorGlyphs);
    assert_equals_uint32("kCTFontTraitComposite", (1 << 14), kCTFontTraitComposite);
    assert_equals_uint32("kCTFontTraitClassMask", (15U << kCTFontClassMaskShift), kCTFontTraitClassMask);

    /* Deprecated values */
    assert_equals_uint32("kCTFontItalicTrait", (1 << 0), kCTFontItalicTrait);
    assert_equals_uint32("kCTFontBoldTrait", (1 << 1), kCTFontBoldTrait);
    assert_equals_uint32("kCTFontExpandedTrait", (1 << 5), kCTFontExpandedTrait);
    assert_equals_uint32("kCTFontCondensedTrait", (1 << 6), kCTFontCondensedTrait);
    assert_equals_uint32("kCTFontMonoSpaceTrait", (1 << 10), kCTFontMonoSpaceTrait);
    assert_equals_uint32("kCTFontVerticalTrait", (1 << 11), kCTFontVerticalTrait);
    assert_equals_uint32("kCTFontUIOptimizedTrait", (1 << 12), kCTFontUIOptimizedTrait);
    assert_equals_uint32("kCTFontClassMaskTrait", (15U << 28), kCTFontClassMaskTrait);
}
