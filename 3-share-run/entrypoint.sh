#!/bin/bash

# Argument validation
if [ $# -eq 0 ]; then
    echo "Error: No Java file specified."
    exit 1
fi

# Extract the filename from the argument (should be in format YourJavaFile.java)
JAVA_FILE=$1

# Compile Java file
echo "Compiling $JAVA_FILE"
javac /app/src/$JAVA_FILE

# Check compilation status
if [ $? -ne 0 ]; then
    echo "Error: Compilation failed for $JAVA_FILE"
    exit 1
fi

# Run Java program (assuming the Java file contains a main method)
# Extract filename without extension for running
FILENAME=$(basename "$JAVA_FILE" .java)
echo "Running $FILENAME"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
java -cp /app/src $FILENAME

# Cleanup class files
rm /app/src/$FILENAME.class