# OCP4.1
Scripting OCP 4.1 Installation 

#Step 1 Generate SSH Key 
Run the keygencreate.sh to create the appropriate ssh key for use during the automated install process 

#Step 2 Download the OpenShift 4.1 Linux and Client tools using the s3download.sh 
This will download and extract the OCP installer and client tools required to install OpenShift 4.1 

#Step 3 The installation of the cluster 
./openshift-install create cluster --dir=/tmp/install-cluster.yaml \ 
    --log-level debug 

This should create the cluster with the modified yaml file. 
