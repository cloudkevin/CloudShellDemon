# CloudShellDemon

Nobody wants to be locked in a container! (This is helpful for conducting research on Google Cloud Platform)

First we create a new container with host-based networking. This container runs in privileged mode with the root fs of the host mounted under /rootfs  

Next we 'own' Kubernetes by running the second shell script from a terminal session in our new container. This reconfigures the cluster to run in privileged mode after reboot.

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.png)](https://console.cloud.google.com/cloudshell/open?git_repo=https://github.com/cloudkevin/CloudShellDemon&tutorial=README.md)