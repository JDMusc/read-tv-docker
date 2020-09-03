FROM rocker/r-devel:latest

RUN apt-get install -y git

RUN apt-get install -y vim

RUN git clone https://github.com/JDMusc/READ-TV.git

COPY dependencies.R .

RUN Rscript dependencies.R

EXPOSE 80
