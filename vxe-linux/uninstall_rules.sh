#!/bin/bash

sudo rm -rf /etc/udev/rules.d/vxe.rules 
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "DONE!"
