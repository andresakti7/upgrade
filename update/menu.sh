#!/bin/bash
# ========================================
BOT="https://raw.githubusercontent.com/Andyyuda/global/main/"
UPDATE="https://raw.githubusercontent.com/Andyyuda/Project/main/update/update.sh"
GREEN='\033[0;32m'
RED='\033[0;31m'
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Andyyuda/permission/main/ip"
checking_sc() {
useexp=$(wget -qO- $data_ip | grep ${ipsaya} | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e ""
echo -e "            ${RED}PERMISSION DENIED !${NC}"
echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
echo -e "             \033[0;33mContact Admin :${NC}"
echo -e "      \033[0;36mTelegram${NC} t.me/Dragon_Emperor999"
echo -e "      ${GREEN}WhatsApp${NC} wa.me/6283821682527"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
exit
fi
}
checking_sc

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/Andyyuda/permission/main/ip | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/Andyyuda/permission/main/ip | grep $MYIP | awk '{print $3}')
fi

# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="Lawon"


tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")



data_ip="https://raw.githubusercontent.com/Andyyuda/permission/main/ip"
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))




# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-epro | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${GREEN}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

clear
clear
function add-host(){
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}               • ADD VPS HOST •                ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
read -rp "  New Host Name : " -e host
echo ""
if [ -z $host ]; then
echo -e "  [INFO] Type Your Domain/sub domain"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/ssnvpn-pro/ipvps.conf
echo ""
echo "  [INFO] Dont forget to renew cert"
echo ""
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to Renew Cret"
crtxray
fi
}
clear
clear
clear

echo -e "${BLUE}┌────────────────────────────────────────────────────────────┐${BLUE}${NC}"
echo -e " ${BLUE}                     << INFORMASI VPS >>                    \E[0m" 
echo -e "${BLUE}└────────────────────────────────────────────────────────────┘${BLUE}${NC}"
echo -e "  ${BLUE}• ${GREEN}Sever Uptime        ${NC}${GREEN}= $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "  ${BLUE}• ${GREEN}Current Time        ${NC}${GREEN}= $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "  ${BLUE}• ${GREEN}Operating System    ${NC}${GREEN}= $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "  ${BLUE}• ${GREEN}Current Domain      ${NC}${GREEN}= $( cat /etc/xray/domain )"
echo -e "  ${BLUE}• ${GREEN}NS Domain           ${NC}${GREEN}= $( cat /etc/xray/dns )"
echo -e "  ${BLUE}• ${GREEN}Server IP           ${NC}${GREEN}= ${ipsaya}"
echo -e "  ${BLUE}• ${GREEN}ISP-VPS             ${NC}${GREEN}= ${ISP}"
echo -e "  ${BLUE}• ${GREEN}City                ${NC}${GREEN}= ${CITY}"
echo -e "  ${BLUE}• ${GREEN}Server Resource     ${NC}${GREEN}= $uram / $tram"
echo -e "  ${BLUE}• ${GREEN}CPU Usage           ${NC}${GREEN}= $cpu_usage"
echo -e "  ${BLUE}• ${GREEN}CPU Core            ${NC}${GREEN}= $CORE"
echo -e "  ${BLUE}• ${GREEN}Developer           ${NC}${GREEN}= Andy Yuda & Dragon Emperor ${NC}"
echo -e "${RED}┌────────────────────────────────────────────────────────────┐${RED}${NC}"
echo -e "${BLUE}                     << STATUS SERVICE >>                    ${BLUE}" 
echo -e "${RED}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "${RED}┌────────────────────────────────────────────────────────────┐${RED}${NC}"
echo -e "      ${BLUE}[ SSH Websocket${NC}: ${GREEN}ON ${NC}]  [ NGINX${NC}: ${status_nginx} ] [ XRAY${NC} : ${status_xray} ] "
echo -e "${RED}└────────────────────────────────────────────────────────────┘${RED}${NC}"
echo -e "${BLUE}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${BLUE}│  \033[0m ${BOLD}${YELLOW}SSH     VMESS       VLESS      TROJAN       SHADOWSOCKS$NC  ${BLUE}│"
echo -e "${BLUE}│  \033[0m ${Blue} $ssh1        $vma           $vla          $tra               $ssa   $NC    ${BLUE}│"
echo -e "${BLUE}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "${BLUE}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e " ${BLUE}                    << MENU TUNNELING >>                    \E[0m" 
echo -e "${BLUE}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "  ${CYAN}[01]${NC} • ${RED}[${NC}${GREEN} SSH MENU ${NC}${RED}]${NC}             ${CYAN}[08]${NC} • ${RED}[${NC}${GREEN} BACKUP MENU ${NC}${RED}]${NC} "
echo -e "  ${CYAN}[02]${NC} • ${RED}[${NC}${GREEN} VMESS MENU ${NC}${RED}]${NC}           ${CYAN}[09]${NC} • ${RED}[${NC}${GREEN} SETTING MENU${NC}${RED}]${NC}  "
echo -e "  ${CYAN}[03]${NC} • ${RED}[${NC}${GREEN} VLESS MENU ${NC}${RED}]${NC}           ${CYAN}[10]${NC} • ${RED}[${NC}${GREEN} INFORMATION ${NC}${RED}]${NC}     "
echo -e "  ${CYAN}[04]${NC} • ${RED}[${NC}${GREEN} TROJAN MENU ${NC}${RED}]${NC}          ${CYAN}[11]${NC} • ${RED}[${NC}${GREEN} ADD HOST/DOMAIN ${NC}${RED}]${NC}    "
echo -e "  ${CYAN}[05]${NC} • ${RED}[${NC}${GREEN} SSWS MENU ${NC}${RED}]${NC}            ${CYAN}[12]${NC} • ${RED}[${NC}${GREEN} CERT XRAY ${NC}${RED}]${NC}    "
echo -e "  ${CYAN}[06]${NC} • ${RED}[${NC}${GREEN} UPDATE MENU${NC}${RED}]${NC}           ${CYAN}[13]${NC} • ${RED}[${NC}${GREEN} AUTO REBOOT ${NC}${RED}]${NC}     "
echo -e "  ${CYAN}[07]${NC} • ${RED}[${NC}${GREEN} INSTALL UDP ${NC}${RED}]${NC}          ${CYAN}[14]${NC} • ${RED}[${NC}${GREEN} INSTALL UDP GLOBAL ${NC}${RED}]${NC} "
echo -e "${BLUE}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "  ${BLUE}• ${GREEN}Clients Name     ${NC}= ${YELLOW}$Name ${NC}"
echo -e "  ${BLUE}• ${GREEN}Script Exp       ${NC}= ${YELLOW}$Exp ${NC}${RED} $dayleft Hari  ${NC}${YELLOW}${NC}"
#echo -e " ${BLUE}            << SCRIPT MULTIPORT TUNNELING >>                    ${BLUE}${NC}" 
echo -e "${BLUE}└────────────────────────────────────────────────────────────┘${NC}"
echo -e ""
echo -ne " Select menu : "; read opt
case $opt in
01 | 1) clear ; menu-ssh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; wget https://raw.githubusercontent.com/Andyyuda/Project/main/update/update.sh && chmod +x update.sh && ./update.sh ;;
07 | 7) clear ; wget --load-cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
08 | 8) clear ; menu-backup ;;
09 | 9) clear ; menu-set ;;
10) clear ; info ;;
11) clear ; add-host ;;
12) clear ; crtxray ;;
13) clear ; auto-reboot ;;
14) clear ; wget ${BOT}global.sh && chmod +x global.sh && ./global.sh ;;
999) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) menu ; menu ;;
esac

