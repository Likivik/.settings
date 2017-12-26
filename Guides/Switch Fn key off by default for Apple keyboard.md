Change this file

```
$ /sys/module/hid_apple/parameters/fnmode
# or like so:
$ sudo bash -c "echo 2 > /sys/module/hid_apple/parameters/fnmode"
```

    0 = Fn key disabled
    1 = Fn key pressed by default
    2 = Fn key released by default

To do it permanently:

With .conf file (Recommended)

1. Run the following command to append the configuration line to the file /etc/modprobe.d/hid_apple.conf creating it if necessary:
```
$ echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf
```
2. Trigger copying the configuration into the initramfs bootfile.
```
$ sudo update-initramfs -u -k all
```
3. Optionally, reboot
```
$ sudo reboot
```
Source: https://help.ubuntu.com/community/AppleKeyboard#Change%20Function%20Key%20behavior
