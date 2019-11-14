# rancher-rexray


# Forked from s0urc3c0d3/rancher-rexray

Git repozitory for rexray ebs volume driver. 

Reason to fork the repository and the docker image was my own problems with setup rexray on rancher.
The community did prepare rexray to work only with cattle.

The docker image is rebuilded wlan0/sdc2 image used by community wersion of rancher rexray plugin. However this time I wanted
to do this right - with help of dockerfiles to provide the means for everyone who is willing to improve or make something new.


# Building docker image

Go to docker directory and run

$ docker build -t IMAGE_NAME:TAG .

# Installation on rancher

On rancher go to Admin -> Settings and put the URL of this repository as custom catalog URL. 
# License

You are free to use this repository as GPLv2 allows. You can read the GPLv2 here:
https://www.gnu.org/licenses/old-licenses/gpl-2.0.html

