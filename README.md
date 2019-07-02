# OCP4.1
Scripting OCP 4.1 Installation 

#Step 1 Generate SSH Key 
Run the keygencreate.sh to create the appropriate ssh key for use during the automated install process 

#Step 2 Download the OpenShift 4.1 Linux and Client tools using the s3download.sh 
This will download and extract the OCP installer and client tools required to install OpenShift 4.1 

#Step 3 The installation of the cluster 
The script s3download.sh will do a few things. It logs you into the RedHat developer, downloads the installer packages from S3, extracts them to a folder, and initializes the start of the OCP install uzing the preconfigured install-cluster.yaml 
- note these preconfigured files assumes a few things. 
-1: An active AWS Subscription with full IAM privs
-2: That Route53 has been created with a designated zone (octo.chat)
-3: That a sub zone is allowed to be created within Route53
-4: An active RedHat developer subscription with pull secret enabled 

This should create the cluster with the self-contained yaml file. 
