FROM  nvidia/cuda:11.2.0-cudnn8-devel-ubuntu20.04

# Used by tzdata to configure - otherwise it's stuck 
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# update system
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install python3-pip python3-dev -y

# add python dependencies
COPY ./requirements.txt /
RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

# add PWCLO
COPY ./tools /PWCLO/tools
COPY ./utils /PWCLO/utils
COPY ./tf_ops /PWCLO/tf_ops
COPY ./evaluation.py /PWCLO/evaluation.py
COPY ./kitti_dataset.py /PWCLO/kitti_dataset.py
COPY ./PWCLO_Net.py /PWCLO/PWCLO_Net.py
COPY ./main.py /PWCLO/main.py
COPY ./make.sh /PWCLO/make.sh
COPY ./command.sh /PWCLO/command.sh

WORKDIR /PWCLO

# build tf_ops
RUN ./make.sh
ENTRYPOINT [ "./command.sh" ]