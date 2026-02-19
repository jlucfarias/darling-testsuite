// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

// Older versions of macOS can't directly include the <PDFKit/PDFKit.h> header.
#include <Quartz/Quartz.h>

#include <darling-testsuite/assertion.h>
#include <darling-testsuite/availability.h>

int main() {
    // #include <PDFKit/PDFDocument.h>
#if MIN_MACOS(VERSION_10_4)
    assert_equals_NSString(@"Author", PDFDocumentAuthorAttribute);
    assert_equals_NSString(@"CreationDate", PDFDocumentCreationDateAttribute);
    assert_equals_NSString(@"Keywords", PDFDocumentKeywordsAttribute);
    assert_equals_NSString(@"Title", PDFDocumentTitleAttribute);
#endif
}
