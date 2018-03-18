#! /bin/bash

aws s3 cp s3://popfile_back/popfile_back.tgz ./tmp/
cd ./tmp; tar zxvf popfile_back.tgz


