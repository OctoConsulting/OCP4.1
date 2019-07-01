#!/bin/bash -e
mkdir ~/tmp
cd ~/tmp
aws s3 sync s3://octo-openshift ~/tmp
sleep 5
tar xvf ~/tmp/openshift-install-linux-4.1.3.tar.gz
tar xvf ~/tmp/openshift-client-linux-4.1.3.tar.gz
./openshift-install 
