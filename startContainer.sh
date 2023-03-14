#!/bin/bash
REPOSITORY=rsdev89/phd
TAG=pwclo_net

docker run -it \
            --entrypoint /bin/bash \
            -v /home/rschilli/ros2_ws/promotion/src/PWCLONet/data_odometry_calib/dataset:/dataset \
            -v /home/rschilli/ros2_ws/promotion/src/PWCLONet/result:/PWCLO/result \
            --gpus all \
            $REPOSITORY:$TAG
