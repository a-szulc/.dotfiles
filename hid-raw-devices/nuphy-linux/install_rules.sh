#!/bin/bash

sudo cp nuphy.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
