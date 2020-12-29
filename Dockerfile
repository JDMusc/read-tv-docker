FROM rocker/r-devel:latest

RUN apt-get update

RUN apt-get install -y git libgit2-dev libssl-dev libxml2-dev

COPY dependencies.R .

RUN Rscript dependencies.R

COPY install_rtv.R .

RUN Rscript install_rtv.R

EXPOSE 80
