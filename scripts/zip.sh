#!/bin/bash

# Create a temporary directory for packaging
mkdir -p package

# Copy the lambda function
cp lambda_function.py package/
cp requirements.txt package/
cp -r src package/
# Copy dependencies from virtual environment
cp -r .venv/lib/python3*/site-packages/* package/

# Create zip file from the package directory
cd package
zip -r ../function.zip .
cd ..

# Clean up
rm -rf package
