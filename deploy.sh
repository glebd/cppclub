#!/bin/sh
USER=dh_gbi6e7
HOST=giles.dreamhost.com
DIR=/home/dh_gbi6e7/cppclub.uk/

HUGO_SECURITY_EXEC_ALLOW=rst2html.py hugo && rsync -avzhm --exclude-from=rsync-exclude.lst --delete public/ ${USER}@${HOST}:${DIR}
