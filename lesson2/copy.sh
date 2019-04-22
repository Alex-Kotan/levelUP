#!/bin/bash
ssh root@35.228.171.124 find /bckups/ -type f  -mtime +7 -exec rm -f {} \;
ssh root@35.228.171.124 find /bckups/ -type d  -empty -exec rmdir {} \;
rsync -a --ignore-existing /home/kotov/files/* root@35.228.171.124:/bckups/