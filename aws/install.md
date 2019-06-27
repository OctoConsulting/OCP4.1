# Cluster Installation

At this point, you are ready to perform the OpenShift installation. You have two choices for installing your cluster on
AWS, Installer-Provided Infrastructure (IPI) or User-Provided Infrastructure (UPI). See below for an example of an
IPI install.


## Example: Installer-Provided Infrastructure (IPI)

The steps for performing an IPI-based install are outlined [here][cloud-install]. Following this guide you may begin at
Step 3: Download the Installer.

### Create Configuration

```console
[~]$ openshift-install-linux-amd64 create install-config
? SSH Public Key /home/user_id/.ssh/id_rsa.pub
? Platform aws
? Region us-east-1
? Base Domain example.com
? Cluster Name test
? Pull Secret [? for help]
```

### Create Cluster

```console
[~]$ openshift-install-linux-amd64 create cluster
INFO Waiting up to 30m0s for the Kubernetes API at https://api.test.example.com:6443...
INFO API v1.11.0+85a0623 up
INFO Waiting up to 30m0s for the bootstrap-complete event...
INFO Destroying the bootstrap resources...
INTO Waiting up to 30m0s for the cluster at https://api.test.example.com:6443 to initialize...
INFO Waiting up to 10m0s for the openshift-console route to be created...
INFO Install complete!
INFO To access the cluster as the system:admin user when using 'oc', run 'export KUBECONFIG=/home/user/auth/kubeconfig'
INFO Access the OpenShift web-console here: https://console-openshift-console.apps.test.example.com
INFO Login to the console with user: kubeadmin, password: 5char-5char-5char-5char
```

