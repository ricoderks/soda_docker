FROM rocker/shiny:latest
LABEL maintainer "Rico Derks" r.j.e.derks@lumc.nl

## install some packages I need (e.g. from bioconductor)
## not yet the same approach as above (i.e. install SUGGETS list manually)
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    git \
    subversion \
    libglpk-dev \
  && . /etc/environment

# install some packges  
RUN  install2.r --error --skipinstalled \ 
    BiocManager \
    rmarkdown \
    markdown \
    shinyjs \
    bs4Dash \
    shinyWidgets \
    shinybrowser \
    shinymanager \
    shinyvalidate \
    ggplot2 \
    gridExtra \
    plotly \
    visNetwork \
    heatmaply \
    ggpubr \
    ggupset \
    networkD3 \
    igraph \
    ellipse \
    stringr \
    DT \
    readxl \
    grDevices \
    RColorBrewer \
    stats \
    glmnet \
    ggridges \
    SNFtool \
    reshape2 \
    dplyr \
    tidyr

  
RUN R -e 'BiocManager::install(c("pcaMethods", "org.Hs.eg.db", "enrichplot", "clusterProfiler", "MOFA2", "basilisk"))'
  
RUN  rm -rf /tmp/downloaded_packages/ /tmp/*.rds
