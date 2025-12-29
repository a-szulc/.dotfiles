#!/bin/bash

sudo rm -rf /etc/udev/rules.d/nuphy.rules 
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "DONE!"
