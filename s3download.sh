#!/bin/bash -e
mkdir /home/cloud_user/ocp41
chown -R cloud_user:cloud_user /home/cloud_user/ocp41
cd /home/cloud_user/ocp41
aws s3 sync s3://octo-openshift /home/cloud_user/ocp41
sleep 5
tar xvf openshift-install-linux-4.1.3.tar.gz
tar xvf openshift-client-linux-4.1.3.tar.gz
./openshift-install create cluster --dir=/home/cloud_user/ocp41 --log-level debug
