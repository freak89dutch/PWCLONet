FROM  nvidia/cuda:11.2.0-cudnn8-devel-ubuntu20.04

# Used by tzdata to configure - otherwise it's stuck 
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# update system
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install python3-pip python3-dev -y

# add python dependencies
RUN pip3 install --upgrade pip && \
    pip3 install tensorflow==2.7.0 tensorboard==2.7.0 protobuf==3.20 matplotlib==3.3

