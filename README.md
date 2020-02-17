# CraftBeerPi V3.0

This is CraftBeerPi version 3.0 for OrangePi H3 CPU . It's currently in beta status.

## Installation

Open a terminal window on Orange Pi and type:

<code> git clone https://github.com/wzooroo/craftbeerpi3</code>

This will download (clone) the software to your local Orange Pi.

Type <code>cd craftbeerpi3</code> to navigate into the craftbeerpi folder.

Type <code>chmod +x wiringop.sh</code>

Type <code>sudo ./wiringop.sh</code>

Type <code>sudo ./install.sh</code>

## Hardware Wiring

Here you will find a guide how to wire everything up.

http://web.craftbeerpi.com/hardware/

## ATTENTION

CraftBeerPi 3.0 is a complete rewrite. Server as well as user interface. I recommend to use a second SD card for testing.

## Docker-based development

For developing this application or its plugins on a PC/Mac you can use the docker-compose file:

``` shell
$ docker-compose up
...
Starting craftbeerpi3_app_1 ... done
Attaching to craftbeerpi3_app_1
app_1  | [2018-08-13 12:54:44,264] ERROR in __init__: BUZZER not working
app_1  | (1) wsgi starting up on http://0.0.0.0:5000
```

The contents of this folder will be mounted to `/usr/src/craftbeerpi3` and the server will be accesible on `localhost:5000`.
