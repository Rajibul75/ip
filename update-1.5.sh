#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl https://raw.githubusercontent.com/Rajibul75/ip/main/ipaccess | grep $MYIP )
if [ $MYIP = $IZIN ]; then
clear
echo -e "${green}Permission Accepted...${NC}"
echo ""
sleep 5
else
clear
echo -e "${red}Permission Denied!${NC}";
echo -e "${red}This Feature Only For Premium Users${NC}"
echo ""
echo -e "Please Contact ${green}Admin${NC}"
echo -e "Telegram : t.me/vinstechmy"
rm -f setup.sh
exit 0
fi
versi=$(cat /home/ver)
if [[ $versi == 1.5 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update Autoscripts . . ."
echo ""
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
rm -f /usr/bin/menu
cd /usr/bin
wget -O menu "https://www.dropbox.com/s/khy5wa1w7k2uwt1/menu.sh"
wget -O menu-vmess "https://www.dropbox.com/s/r7sg16a2r8bx454/menu-vmess.sh"
wget -O menu-vless "https://www.dropbox.com/s/wjkg6r0q7j0c45k/menu-vless.sh"
wget -O menu-l2tp "https://www.dropbox.com/s/t8hfk0op2lks141/menu-l2tp.sh"
wget -O menu-pptp "https://www.dropbox.com/s/ji6vdv8xhax8jgi/menu-pptp.sh"
wget -O menu-sstp "https://www.dropbox.com/s/vlccau8nefs2ms4/menu-sstp.sh"
wget -O menu-ss "https://www.dropbox.com/s/n57n69h9bgym381/menu-ss.sh"
wget -O menu-ssr "https://www.dropbox.com/s/v20ckrgl2c0m335/menu-ssr.sh"
wget -O menu-trojan "https://www.dropbox.com/s/uu4ewvr2it73htk/menu-trojan.sh"
wget -O menu-wg "https://www.dropbox.com/s/ylhir64v7unayjt/menu-wg.sh"
wget -O menu-ssh "https://www.dropbox.com/s/bgx1i8ahpno7sk3/menu-ssh.sh"
wget -O menu-xray "https://www.dropbox.com/s/npot8et52rdd5rm/menu-xray.sh"
chmod +x /usr/bin/menu
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-l2tp
chmod +x /usr/bin/menu-pptp
chmod +x /usr/bin/menu-sstp
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/menu-ssr
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-wg
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-xray
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.5" > /home/ver
clear
echo " Fix minor Bugs "
rm -f update
sleep 3
echo -e ""
echo " Update AutoScript Complete !"
echo ""
read -n1 -r -p " Press any key to continue..."
clear
menu
