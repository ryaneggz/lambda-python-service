#!/bin/bash
# set -x ## Debugging

VERSION=$1

# Define the name of the archive
function_name='test_lambda'
archive_name="function.zip"

echo "Project has been zipped and saved as $archive_name"

aws lambda update-function-code \
  --function-name $function_name \
  --zip-file fileb://$archive_name > /dev/null 2>&1
  echo "Lambda $function_name has been updated with $archive_name"