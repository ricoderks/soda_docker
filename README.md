## Introduction

This image is based on **rocker/verse** version 4.1.2. Version 4.2 gives some errors.

Packages needed:

* googleVis
* glmnet
* d3heatmap
* shiny
* readxl
* xlsx
* reshape
* reshape2
* ggplot2
* ggpubr
* ggExtra
* cowplot
* RColorBrewer
* pROC
* ggbiplot <- don't install this one
* corrplot
* gplots
* tidyverse
* dendextend
* ComplexHeatmap
* InteractiveComplexHeatmap
* plotly
* shinymanager

## Build

Build with:

`docker build --tag ricolumc/soda:v0.1.0 .`

## Run

First set the export the UID and GID with:


* `export UID=$(id -u)`
* `export GID=$(id -g)`

Run the container with:

`docker run -d -p 8786:8787 -v /home/rjederks/Documents/Projects:/home/rstudio/projects -e PASSWORD=my_passwd -e USERID=$UID -e GROUPID=$GID ricolumc/soda:v0.1.0`
