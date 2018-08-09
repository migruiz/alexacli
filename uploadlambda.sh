#!/bin/bash
cd /code/lambda
/usr/local/bin/npm install
/usr/bin/zip -X -r   ../lambda.zip *
cd ..
/root/.local/bin/aws lambda update-function-code --function-name $1 --zip-file  fileb:///code/lambda/lambda.zip





