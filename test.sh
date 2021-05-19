#!/bin/bash
assert() {
    expected="$1"
    input="$2"

    ./9cc "$input" > temp.s
    gcc temp.s -o temp
    ./temp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

assert 0 0
assert 42 42
assert 21 "5+20-4"
echo ok
