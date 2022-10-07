#!/bin/bash

flatpak=/var/lib/flatpak/exports/share/applications/com.google.Chrome.desktop

if [ -f $flatpak ] && ! cat $flatpak | grep Vaapi &> /dev/null
then
    sudo sed -i '/^Exec/s/com.google.Chrome/com.google.Chrome --enable-features=VaapiVideoDecoder/' $flatpak
fi
