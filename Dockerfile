FROM rocker/verse:4.1.2
LABEL maintainer "Rico Derks" r.j.e.derks@lumc.nl

# install some packges  
RUN  install2.r --error --skipinstalled \ 
    BiocManager \
    googleVis \
    glmnet \
    shiny \
    readxl \
    xlsx \
    reshape \
    reshape2 \
    ggplot2 \
    ggpubr \
    ggExtra \
    cowplot \
    RColorBrewer \
    pROC \
    corrplot \
    gplots \
    dendextend \
    plotly \
    shinymanager \
    shinyjs \
    shinyWidgets
  
RUN R -e 'BiocManager::install(c("ComplexHeatmap", "InteractiveComplexHeatmap"))' \
    && R -e 'remotes::install_github("talgalili/d3heatmap")'
  
RUN  rm -rf /tmp/downloaded_packages/ /tmp/*.rds
