# SETUP

I use this along with my [dotfiles](https://github.com/7ze/dots) to set up my
arch system from scratch.

## Test run

To test this on a docker container, just run 

```sh
./bootstrap-docker
```

which will spin up a docker container named `zeus` based on an arch linux
image. Then from inside the new docker container, run

```sh
./ansible/bootstrap.sh
```

> Note: When prompted the become password, just enter `archie`

Exit the container once the installation process is done and the script
finishes running.

```sh
exit
```

This should spin up & install everything in its place, rightfully so. Log in
back again to see your newly set up system up and running.

```sh
docker start zeus
docker attach zeus
```

and _voila_, you should be looking at a perfectly installed system to your
liking with your dotfiles in its respective cozy places.

> Note: work in progress
