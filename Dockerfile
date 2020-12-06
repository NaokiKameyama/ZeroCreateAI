FROM continuumio/anaconda3:2019.07

RUN apk add --update nodejs nodejs-npm

RUN apk --update-cache add \
    python3 \
    python3-dev \
    py3-pip \
    gcc \
    g++ \
    curl \
    bash

RUN pip install flask \
    pip install peewee

# FROM ubuntu:latest

# RUN apt-get update && apt-get -y upgrade && \
#     apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 \
#     libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 wget -y && \
#     wget -P /opt https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh && \
#     bash /opt/Anaconda3-2020.02-Linux-x86_64.sh -b -p /opt/anaconda3 && \
#     rm /opt/Anaconda3-2020.02-Linux-x86_64.sh && \
#     echo "export PATH=/opt/anaconda3/bin:$PATH" >> ~/.bashrc && \
#     . ~/.bashrc && \
#     conda init


# RUN set -xe \
#     && apt-get update \
#     && apt-get install python3-pip
# RUN pip3 install --upgrade pip
# RUN pip3 install -r requirements.txt
# RUN pip install --upgrade pip
# RUN pip install --upgrade setuptools
# RUN pip install flask
# RUN pip install peewee