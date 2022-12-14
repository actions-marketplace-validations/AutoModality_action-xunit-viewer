
#!/bin/sh
#NOTICE: Shell, not bash, so it runs on Alpine

set -e

test/one.sh test/success_fixture.xml 0
test/one.sh test/failure_fixture.xml 1
test/one.sh test/singular_testsuite_success_fixture.xml 0
test/one.sh test/singular_testsuite_failure_fixture.xml 1
test/one.sh test/error_fixture.xml 1
test/one.sh test/no_error_field_fixture_success.xml 0
test/one.sh test/no_error_field_fixture_failure.xml 1

test/one.sh test 1
test/one.sh test/success 0
test/one.sh test/failure 1
test/one.sh test/error 1
test/one.sh missing.xml 0
test/one.sh test/missing.xml 0
test/one.sh test/no_error_field_fixture.xml 0
test/one.sh test/no_error_field_fixture_failure.xml 1
