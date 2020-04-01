# CMake generated Testfile for 
# Source directory: D:/Programs/Github/AutoTests/Catch2/projects
# Build directory: D:/Programs/Github/AutoTests/catch2_build/projects
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(RunTests "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe")
set_tests_properties(RunTests PROPERTIES  FAIL_REGULAR_EXPRESSION "Filters:" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;374;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(ListTests "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "--list-tests" "--verbosity" "high")
set_tests_properties(ListTests PROPERTIES  FAIL_REGULAR_EXPRESSION "Hidden Test" PASS_REGULAR_EXPRESSION "[0-9]+ test cases" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;379;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(ListTags "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "--list-tags")
set_tests_properties(ListTags PROPERTIES  FAIL_REGULAR_EXPRESSION "\\[\\.\\]" PASS_REGULAR_EXPRESSION "[0-9]+ tags" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;385;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(ListReporters "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "--list-reporters")
set_tests_properties(ListReporters PROPERTIES  PASS_REGULAR_EXPRESSION "Available reporters:" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;390;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(ListTestNamesOnly "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "--list-test-names-only")
set_tests_properties(ListTestNamesOnly PROPERTIES  FAIL_REGULAR_EXPRESSION "Hidden Test" PASS_REGULAR_EXPRESSION "Regex string matcher" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;393;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(NoAssertions "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "-w" "NoAssertions")
set_tests_properties(NoAssertions PROPERTIES  PASS_REGULAR_EXPRESSION "No assertions in test case" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;398;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(NoTest "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "Tracker," "___nonexistent_test___")
set_tests_properties(NoTest PROPERTIES  FAIL_REGULAR_EXPRESSION "No tests ran" PASS_REGULAR_EXPRESSION "No test cases matched '___nonexistent_test___'" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;401;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(WarnAboutNoTests "C:/Program Files/CMake/bin/cmake.exe" "-P" "D:/Programs/Github/AutoTests/Catch2/projects/SelfTest/WarnAboutNoTests.cmake" "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe")
set_tests_properties(WarnAboutNoTests PROPERTIES  _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;407;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(UnmatchedOutputFilter "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "[this-tag-does-not-exist]" "-w" "NoTests")
set_tests_properties(UnmatchedOutputFilter PROPERTIES  PASS_REGULAR_EXPRESSION "No test cases matched '\\[this-tag-does-not-exist\\]'" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;409;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(FilteredSection-1 "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "#1394" "-c" "RunSection")
set_tests_properties(FilteredSection-1 PROPERTIES  FAIL_REGULAR_EXPRESSION "No tests ran" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;415;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(FilteredSection-2 "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "#1394 nested" "-c" "NestedRunSection" "-c" "s1")
set_tests_properties(FilteredSection-2 PROPERTIES  FAIL_REGULAR_EXPRESSION "No tests ran" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;417;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(ApprovalTests "C:/Users/Daniil/AppData/Local/Programs/Python/Python38-32/python.exe" "D:/Programs/Github/AutoTests/Catch2/scripts/approvalTests.py" "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe")
set_tests_properties(ApprovalTests PROPERTIES  FAIL_REGULAR_EXPRESSION "Results differed" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;421;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(RegressionCheck-1670 "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "#1670 regression check" "-c" "A" "-r" "compact")
set_tests_properties(RegressionCheck-1670 PROPERTIES  PASS_REGULAR_EXPRESSION "Passed 1 test case with 2 assertions." _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;424;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(VersionCheck "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "-h")
set_tests_properties(VersionCheck PROPERTIES  PASS_REGULAR_EXPRESSION "Catch v2.11.3" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;427;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(LibIdentityTest "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "--libidentify")
set_tests_properties(LibIdentityTest PROPERTIES  PASS_REGULAR_EXPRESSION "description:    A Catch2 test executable" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;430;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(FilenameAsTagsTest "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "-#" "--list-tags")
set_tests_properties(FilenameAsTagsTest PROPERTIES  PASS_REGULAR_EXPRESSION "\\[#Approx.tests\\]" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;433;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(EscapeSpecialCharactersInTestNames "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "Test with special\\, characters \"in name")
set_tests_properties(EscapeSpecialCharactersInTestNames PROPERTIES  PASS_REGULAR_EXPRESSION "1 assertion in 1 test case" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;436;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(TestsInFile::SimpleSpecs "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "-f D:/Programs/Github/AutoTests/Catch2/projects/SelfTest/Misc/plain-old-tests.input")
set_tests_properties(TestsInFile::SimpleSpecs PROPERTIES  PASS_REGULAR_EXPRESSION "6 assertions in 2 test cases" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;439;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(TestsInFile::EscapeSpecialCharacters "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "-f D:/Programs/Github/AutoTests/Catch2/projects/SelfTest/Misc/special-characters-in-file.input")
set_tests_properties(TestsInFile::EscapeSpecialCharacters PROPERTIES  PASS_REGULAR_EXPRESSION "1 assertion in 1 test case" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;442;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(TestsInFile::InvalidTestNames-1 "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "-f D:/Programs/Github/AutoTests/Catch2/projects/SelfTest/Misc/invalid-test-names.input")
set_tests_properties(TestsInFile::InvalidTestNames-1 PROPERTIES  PASS_REGULAR_EXPRESSION "Invalid Filter: \"Test with special, characters in \\\\\" name\"" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;448;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")
add_test(TestsInFile::InvalidTestNames-2 "D:/Programs/Github/AutoTests/catch2_build/projects/SelfTest.exe" "-f D:/Programs/Github/AutoTests/Catch2/projects/SelfTest/Misc/invalid-test-names.input")
set_tests_properties(TestsInFile::InvalidTestNames-2 PROPERTIES  PASS_REGULAR_EXPRESSION "No tests ran" _BACKTRACE_TRIPLES "D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;451;add_test;D:/Programs/Github/AutoTests/Catch2/projects/CMakeLists.txt;0;")