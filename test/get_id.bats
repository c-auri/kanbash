function setup
{
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'

    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    source $DIR/../src/kanbash-utils
}

@test "get-id returns ID of new task that is defined in filename" {
    testfile=$BATS_TEST_TMPDIR/1-todo-21-get-id.md
    touch $testfile
    run get_id $testfile
    assert_success
    assert_output 21
}

@test "get-id returns ID of active task that is defined in filename" {
    testfile=$BATS_TEST_TMPDIR/2-doing-4-get-id.md
    touch $testfile
    run get_id $testfile
    assert_success
    assert_output 4
}

@test "get-id returns ID of done task that is defined in filename" {
    testfile=$BATS_TEST_TMPDIR/3-done-01-get-id.md
    touch $testfile
    run get_id $testfile
    assert_success
    assert_output 01
}

@test "get-id fails silently when file does not exist" {
    run get_id $BATS_TEST_TMPDIR/does-not-exist.md
    assert_failure
    refute_output
}

@test "get-id fails silently when filename does contain an ID" {
    testfile=$BATS_TEST_TMPDIR/2-doing-no-id.md
    touch $testfile
    run get_id $testfile
    assert_failure
    refute_output
}
