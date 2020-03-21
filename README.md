# Project Title

Slash'EM in Docker

## Getting Started

This image contains slashem-0.0.7E7F2 source code that has been modified to build and run within a Docker container.

### Prerequisites

Obviously, you will first need to install Docker on your host.
We also assume you will be running the container that already supports X11.
The Slash'EM executable running in the container will be running in a GTK interface, forwarding X11 to your host.

### Installing

Build your container:

```
docker build --build-arg ROOT_PASSWD=password -t latest .
```

  You will probably want to pick something for your root password than "password".
  This is not the place to give a security tutorial, e.g. about not using passwords on command lines.
  If you are not working in a secure environment, you are on your own to secure it.

Run your container:
```
docker run -it -e DISPLAY=:20.0 -v /tmp/.X11-unix:/tmp/.X11-unix:rw --rm --name container-running-slashem latest
```

Compile Slash'EM:

```
cd sources
make all
su
make install
```

## Author

* **Bill Buie** -  2020



## License

Released with NO WARRANTY under the same NETHACK GENERAL PUBLIC LICENSE as Slash'EM source code.

See the Slash'EM source code base included in the mage for more details.


