#!/bin/bash

sudo rm -rf /etc/udev/rules.d/mchose.rules 
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "DONE!"
