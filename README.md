# Project Title

Slash'EM in Docker

## Getting Started

This image contains slashem-0.0.7E7F2 source code that has been modified to build and run within a Docker container.

### Prerequisites

Obviously, you will first need to install Docker on your host.
We also assume you will be running the container on a host that already supports X11.
The Slash'EM executable running in the container will be running in a GTK interface, forwarding X11 to your host.

### Installing

Build your container:

You will probably want to change the password in the buildme.sh script.
This is not the place to give a security tutorial,
e.g. about not using passwords on command lines.
If you are not working in a secure environment, you are on your own to secure it.

Then run it:

```
buildme.sh
```

Run your container:
```
runme.sh
```

Slash'EM will be executable from the command line as "slashem".

## Issues

The GUI seems to be working fine, but I notice a lot of nonfatal errors being thrown
in the terminal window that launched slashem.
I'm not sure what's up with that.
I'd welcome pull requests to resolve them.

## Author

* **Bill Buie** -  2020



## License

Released with NO WARRANTY under the same NETHACK GENERAL PUBLIC LICENSE as Slash'EM source code.

See the Slash'EM source code base included in the mage for more details.


