#!/bin/sh
USER=dh_gbi6e7
HOST=giles.dreamhost.com
DIR=/home/dh_gbi6e7/cppclub.uk/

hugo && rsync -avzhm --exclude-from=rsync-exclude.lst --delete public/ ${USER}@${HOST}:${DIR}
