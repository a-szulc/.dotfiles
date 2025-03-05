Add this to: `~/.config/systemd/user/kanata.service`:

```
[Unit]
Description=Kanata keyboard remapper
Documentation=https://github.com/jtroo/kanata

[Service]
Environment=PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:$HOME/.cargo/bin
Environment=DISPLAY=:0
Type=simple
ExecStart=/usr/bin/sh -c 'exec $$(which kanata) --cfg $${HOME}/.config/kanata/config.kbd'
Restart=no

[Install]
WantedBy=default.target
```

Create uinput user group:
`sudo groupadd uinput`

Add user to the input and the uinput group
```
sudo usermod -aG input $USER
sudo usermod -aG uinput $USER
```

Add this to: `/etc/udev/rules.d/99-input.rules`:
```
KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
```

Then run, or `add_system_service.sh`:

```
systemctl --user daemon-reload
systemctl --user enable kanata.service
systemctl --user start kanata.service
systemctl --user status kanata.service   # check whether the service is running
```
