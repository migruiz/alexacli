#!/bin/bash
cd /code/lambda
/usr/local/bin/npm install
/usr/local/bin/tsc
/usr/bin/zip -X -r   ../lambda.zip *
/root/.local/bin/aws lambda update-function-code --function-name $1 --zip-file  fileb:///code/lambda.zip
/root/.local/bin/aws lambda update-function-configuration --function-name $1 --handler dist/index.handler --runtime nodejs8.10




