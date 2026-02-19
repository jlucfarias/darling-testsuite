add_executable(test_CoreWLAN_variable "test/test_CoreWLAN_variable.m")
target_link_libraries(test_CoreWLAN_variable "-framework Foundation" "-framework CoreWLAN" darling-testsuite-lib)
add_test(NAME test_CoreWLAN_variable COMMAND test_CoreWLAN_variable)
