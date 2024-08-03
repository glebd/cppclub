#!/bin/sh
USER=dh_gbi6e7
HOST=cppclub.uk
DIR=/home/dh_gbi6e7/cppclub.uk/

hugo && rsync --no-inc-recursive -avzhm --exclude-from=rsync-exclude.lst --delete public/ ${USER}@${HOST}:${DIR}
