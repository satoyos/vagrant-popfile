#! /bin/bash

sudo tar zcvf /tmp/popfile_back.tgz /var/lib/popfile/popfile.db /var/lib/popfile/popfile.cfg
aws s3 cp /tmp/popfile_back.tgz s3://popfile_back/
