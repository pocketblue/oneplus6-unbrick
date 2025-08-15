### unbricking oneplus6 with pyhton3-edl

- this guide is for oneplus6 only, do not use it for oneplus6t
- we don't have guide for oneplus6t only

### installing python3-edl on fedora

```sh
# disable modem manager service
sudo systemctl disable --now ModemManager
sudo systemctl mask ModemManager

# enable copr repo with python3-edl
sudo dnf copr enable -y gmanka/gmanka

# install if you use fedora workstation
sudo dnf install python3-edl

# install if you use fedora silverblue
rpm-ostree install python3-edl
```

### flashing

- download archive from releases
- unarchive it
- poweroff device, press both volume buttons, connect device to pc, device will go to edl mode
- run `bash flash.sh`

### other info

- [python3-edl.spec](https://github.com/gmankab/gmanka-copr/blob/main/specs/python3-edl.spec)
- https://github.com/bkerler/edl/issues/432
- https://wiki.lineageos.org/devices/enchilada/fw_update
- https://wiki.lineageos.org/devices/fajita/fw_update
