#!/bin/bash

test_space="./test_space"

# Run tests for all commands

echo
echo "Creating files for case:1"
target="test1"
./1.sh "$test_space/$target" > /dev/null 2>&1
mkdir -p "$test_space/dummy"
echo "Running test for 'ls'"
time ./build/ls_multi -R "$test_space/$target"   > /dev/null 2>&1
echo "Running test for 'cp'"
time ./build/cp_multi -R "$test_space/$target" "$test_space/dummy"    > /dev/null 2>&1
echo "Running test for 'rm'"
time ./build/rm_multi -R "$test_space/$target"    > /dev/null 2>&1
mkdir -p "$test_space/$target" # Ensure destination exists
echo "Running test for 'mv'"
time ./build/mv_multi -R "$test_space/dummy" "$test_space/$target"    > /dev/null 2>&1
rm -rf "$test_space/dummy" # Clear out test space for next tests

echo
echo "Creating files for case:2"
target="test2"
./2.sh "$test_space/$target"   > /dev/null 2>&1
mkdir -p "$test_space/dummy"
echo "Running test for 'ls'"
time ./build/ls_multi -R "$test_space/$target"    > /dev/null 2>&1
echo "Running test for 'cp'"
time ./build/cp_multi -R "$test_space/$target" "$test_space/dummy"    > /dev/null 2>&1
echo "Running test for 'rm'"
time ./build/rm_multi -R "$test_space/$target"    > /dev/null 2>&1
mkdir -p "$test_space/$target" # Ensure destination exists
echo "Running test for 'mv'"
time ./build/mv_multi -R "$test_space/dummy" "$test_space/$target"    > /dev/null 2>&1
rm -rf "$test_space/dummy"

echo
echo "Creating files for case:3"
target="test3"
./3.sh "$test_space/$target"     > /dev/null 2>&1
mkdir -p "$test_space/dummy"
echo "Running test for 'ls'"
time ./build/ls_multi -R "$test_space/$target"    > /dev/null 2>&1
echo "Running test for 'cp'"
time ./build/cp_multi -R "$test_space/$target" "$test_space/dummy"    > /dev/null 2>&1
echo "Running test for 'rm'"
time ./build/rm_multi -R "$test_space/$target"    > /dev/null 2>&1
mkdir -p "$test_space/$target" # Ensure destination exists
echo "Running test for 'mv'"
time ./build/mv_multi -R "$test_space/dummy" "$test_space/$target"    > /dev/null 2>&1
rm -rf "$test_space/dummy"
