#!/bin/bash

# Compile App.java
javac App.java

# Check if compilation was successful
if [ $? -eq 0 ]; then
    # Run App.java and capture output
    output=$(java App)

    # Check if the output contains the expected string
    if [[ "$output" == *"Hello, Jenkins!"* ]]; then
        echo "Test Passed: App.java is executable, and the output is as expected."
        exit 0
    else
        echo "Test Failed: App.java is executable, but the output is incorrect."
        exit 1
    fi
else
    echo "Test Failed: App.java compilation failed."
    exit 1
fi
