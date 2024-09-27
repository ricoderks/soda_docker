## Introduction

This image is based on **rocker/shiny**.


## Build

Build with:

`docker build --tag <name of tag> .`

## Run

First set the export the UID and GID with:


* `export UID=$(id -u)`
* `export GID=$(id -g)`

Run the container with:

`docker run -d -p 3838:3838 -v <name of folder with soda-light>:/srv/shiny-server -v <name of folder for log file>:/var/log/shiny-server <name of tag>`

Example:

`docker run -d -p 3838:3838 -v /srv/shiny-server:/srv/shiny-server -v /var/log/shiny-server:/var/log/shiny-server ricolumc/soda-light:v0.1.0`

