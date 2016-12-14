#!/usr/bin/env bash

set -e

. assert.sh/assert.sh
. main.sh

assert "main" "hello world: "
assert "main 123" "hello world: 123"
assert_raises "main"
assert_raises "main false" 1

assert_end tests

