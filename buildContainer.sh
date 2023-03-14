#!/bin/bash
REPOSITORY=rsdev89/phd
TAG=pwclo_net
FILE=PWCLONet.Dockerfile

#TAG=kitti_odometry_00_10
#FILE=KITTI.Dockerfile
docker build -t $REPOSITORY:$TAG -f $FILE .