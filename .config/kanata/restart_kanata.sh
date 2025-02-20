#!/bin/bash

systemctl --user stop kanata.service
systemctl --user start kanata.service
systemctl --user status kanata.service
systemctl --user enable kanata.service

