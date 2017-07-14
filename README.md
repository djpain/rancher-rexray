# rancher-rexray

Git repozitory for rexray volume driver. Optimized for Mesos on Rancher.

Reason to create this repository and the docker image was my own problems with setup rexray with mesos on rancher.
The community did prepare rexray to work only with cattle. The rancher docs has many demonstrations with mesos + rexray
but no working catalog entry for rexray. I needed this badly.

The docker image is rebuilded wlan0/sdc2 image used by community wersion of rancher rexray plugin. However this time I wanted
to do this right - with help of dockerfiles to provide the means for everyone who is willing to improve or make something new.


# Building docker image

Go to docker directory and run

$ docker build -t IMAGE_NAME:TAG .

# Installation on rancher

On rancher go to Admin -> Settings and put the URL of this repository as custom catalog URL. Next you should see rexray on mesos environments

# License

You are free to use this repository as GPLv2 allows. You can read the GPLv2 here:
https://www.gnu.org/licenses/old-licenses/gpl-2.0.html

