containerId=`docker container list|tail -1|sed s'/ .*//'`
xhost +local:${containerId}
docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw --rm --name container-running-slashem latest
