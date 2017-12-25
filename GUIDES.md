## Nautilus -> Nemo
#### 1. Set Nemo As Default File Manager
```shell
# Check the default
:~$ xdg-mime query default inode/directory 
# Set to Nemo
:~$ xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
```
#### 2. Set Nemo To Handle Desktop
```shell
# Disable desktop handling by Nautilus
:~$ gsettings set org.gnome.desktop.background show-desktop-icons false

# Make sure Nemo is set to handle desktop
:~$ gsettings set org.nemo.desktop show-desktop-icons true
```
Info from [fanDigital](http://www.fandigital.com/2013/01/set-nemo-default-file-manager-ubuntu.html)
