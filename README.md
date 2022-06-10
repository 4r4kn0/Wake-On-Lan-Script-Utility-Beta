# Wake-On-Lan-Script
Wake on lan starting and administrate machine
1 Install etherwake on the server host

#########################################
            Debian Based
 sudo apt update
 sudo apt install etherwake
#########################################

#########################################
            Arch Based
enable AUR
yay -S etherwake
#########################################

2 Hardware configuration Client
enable the "Wake on Lan" function in the bios following the instructions of the manufacturer of the mobo

3 Software configuration
You can check if WOL is enabled by using the ethtool command from the ethtool package:

##################################################################################
                                 Debian Based                                     
sudo ethtool eth0
Settings for eth0:
 Supported ports: [ MII ]
 Supported link modes:   10baseT/Half 10baseT/Full 
                         100baseT/Half 100baseT/Full 
                         1000baseT/Full 
 Supported pause frame use: No
 Supports auto-negotiation: Yes
 Advertised link modes:  10baseT/Half 10baseT/Full 
                         100baseT/Half 100baseT/Full 
                         1000baseT/Full 
 Advertised pause frame use: No
 Advertised auto-negotiation: Yes
 Speed: 100Mb/s
 Duplex: Full
 Port: MII
 PHYAD: 1
 Transceiver: external
 Auto-negotiation: on
 Supports Wake-on: g
 **Wake-on: g**
 Link detected: yes

**Wake-on: g means it is enabled. If not: sudo ethtool -s eth0 wol g**
for more details: https://wiki.debian.org/WakeOnLan
##################################################################################

##################################################################################
                                 Arch Based                                      
 Pacman -Sy ethtool
 ethtool "interface" | grep Wake-on
 Supports Wake-on: pumbag
 **Wake-on: d**
 ethtool -s interface wol g
for more details: https://wiki.archlinux.org/title/Wake-on-LAN
##################################################################################

4 Edit the script by adding your host's network parameters
