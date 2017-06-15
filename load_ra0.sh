#!/bin/bash

sudo ifconfig ra0 up
sudo iwpriv ra0 set NetworkType=Infra
sudo iwpriv ra0 set AuthMode=WPA2PSK
sudo iwpriv ra0 set EncrypType=AES
sudo iwpriv ra0 set SSID=""
sudo iwpriv ra0 set WPAPSK=""
sudo iwpriv ra0 set SSID=""
sudo iwpriv ra0 set WirelessMode=14
sudo iwpriv ra0 set SSID=""
sudo iwconfig ra0
sudo wpa_supplicant -B -d -i ra0 -c /etc/wpa_supplicant.conf -Dwext
sudo dhclient ra0
