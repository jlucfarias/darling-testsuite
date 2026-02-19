#include <CoreWLAN/CoreWLAN.h>

#include <darling-testsuite/assertion.h>

int main() {
    // #include <CoreWLAN/CoreWLANConstants.h>
#if MACOS_SUPPORTED_ABI(VERSION_10_0, VERSION_10_10)
    assert_equals_NSString(@"SCAN_MERGE", kCWScanKeyMerge);
#endif
}
