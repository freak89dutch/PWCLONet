#!/bin/bash
docker run -it \
            --entrypoint /bin/bash \
            -v /home/rschilli/repositories/github/PWCLONet/:/pwclo \
            --gpus all \
            rschilli/phd:pwclonet_2
