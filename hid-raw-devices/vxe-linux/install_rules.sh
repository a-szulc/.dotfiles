#!/bin/bash

sudo cp vxe.rules /etc/udev/rules.d
sudo udevadm control --reload-rules && sudo udevadm trigger
echo "DONE!"
