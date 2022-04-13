#!/bin/sh
USER=dh_gbi6e7
HOST=giles.dreamhost.com
DIR=/home/dh_gbi6e7/cppclub.uk/

hugo && rsync -avz --exclude '.well-known' --exclude '.DS_Store' --delete public/ ${USER}@${HOST}:${DIR}
