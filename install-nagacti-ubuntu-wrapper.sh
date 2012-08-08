#!/bin/bash
set -e -x
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

wget -O /home/ubuntu/install-nagacti-ubuntu.sh https://raw.github.com/k4st3r/slimbusnagacti/master/install-nagacti-ubuntu
chmod +x /home/ubuntu/install-nagacti-ubuntu.sh
/home/ubuntu/install-nagacti-ubuntu.sh

