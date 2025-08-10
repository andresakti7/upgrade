#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
AKUN="AKUN VMESS"
TIMES="10"
CHATID="5862048483"
KEY="6307367714:AAG_Gae1CEjB-BDTYLzHSb89kbmLxzln7mk"
URL="https://api.telegram.org/bot$KEY/sendMessage"
colornow=$(cat /etc/ssnvpn/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="\033[1;36m"
COLBG1="\e[1;97;101m"                      
###########- END COLOR CODE -##########
function editquota(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Quota Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Quota Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
read -p "Limit (Quota): " Quota
echo -e "$[$Quota * 1024 * 1024 * 1024]" > /etc/vmess/${user}
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " VMESS Account Was Successfully Edited"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Quota Ready  : $Quota GB"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
function editlimit(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Limit Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Limit Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
read -p "Limit (IP): " ips
echo -e "${ips}" > /etc/vmess/limit-ip/${user}
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " VMESS Account Was Successfully Edited"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Limit IP Ready  : $ips IP"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
















function delvmess(){
    clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/config.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • DELETE XRAY USER •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "  • You Dont have any existing clients!"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-vmess
fi
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • DELETE XRAY USER •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
grep -E "^### " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq | nl
echo -e ""
echo -e "  • [NOTE] Press any key to back on menu"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "   Input Username : " user
if [ -z $user ]; then
menu-vmess
else
exp=$(grep -wE "^### $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
sed -i "/^### $user $exp/,/^},{/d" /etc/xray/config.json
systemctl restart xray > /dev/null 2>&1
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • DELETE XRAY USER •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "   • Accound Delete Successfully"
echo -e ""
echo -e "   • Client Name : $user"
echo -e "   • Expired On  : $exp"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-vmess
fi
}
function renewvmess(){
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • RENEW VMESS USER •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/config.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
echo -e "  • You have no existing clients!"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-vmess
fi
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}          • RENEW VMESS USER •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
grep -E "^### " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq | nl
echo -e ""
echo -e "  • [NOTE] Press any key to back on menu"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
read -rp "   Input Username : " user
if [ -z $user ]; then
menu-vmess
else
read -p "   Expired (days): " masaaktif
if [ -z $masaaktif ]; then
masaaktif="1"
fi
exp=$(grep -E "^### $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
now=$(date +%Y-%m-%d)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
exp3=$(($exp2 + $masaaktif))
exp4=`date -d "$exp3 days" +"%Y-%m-%d"`
sed -i "/### $user/c\### $user $exp4" /etc/xray/config.json
systemctl restart xray > /dev/null 2>&1
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • RENEW VMESS USER •           ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "   [INFO]  $user Account Renewed Successfully"
echo -e "   "
echo -e "   Client Name : $user"
echo -e "   Days Added  : $masaaktif Days"
echo -e "   Expired On  : $exp4"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-vmess
fi
}

function cekvmess(){
clear
echo -n > /tmp/other.txt
data=( `cat /etc/xray/config.json | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • VMESS USER ONLINE •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

for akun in "${data[@]}"
do
if [[ -z "$akun" ]]; then
akun="tidakada"
fi

echo -n > /tmp/ipvmess.txt
data2=( `cat /var/log/xray/access.log | tail -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | sort | uniq`);
for ip in "${data2[@]}"
do

jum=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | grep -w "$ip" | sort | uniq)
if [[ "$jum" = "$ip" ]]; then
echo "$jum" >> /tmp/ipvmess.txt
else
echo "$ip" >> /tmp/other.txt
fi
jum2=$(cat /tmp/ipvmess.txt)
sed -i "/$jum2/d" /tmp/other.txt > /dev/null 2>&1
done

jum=$(cat /tmp/ipvmess.txt)
if [[ -z "$jum" ]]; then
echo > /dev/null
else
jum2=$(cat /tmp/ipvmess.txt | nl)
echo -e " user : $akun";
echo -e " $jum2";
fi
rm -rf /tmp/ipvmess.txt
done

rm -rf /tmp/other.txt
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-vmess
}

function addvmess(){
clear
source /var/lib/ssnvpn-pro/ipvps.conf
domain=$(cat /etc/xray/domain)
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • CREATE VMESS USER •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
tls="$(cat ~/log-install.txt | grep -w "Vmess TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vmess None TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do

read -rp "   Input Username : " -e user
read -rp "   Input Quota : " -e quota
read -rp "   Input limit IP : " -e limit
#read -p "   Owner     : " OWNER
      
if [ -z $user ]; then
echo -e " [Error] Username cannot be empty "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
fi
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}         • CREATE VMESS USER •          ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " Please choose another name."
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
			read -n 1 -s -r -p "   Press any key to back on menu"
menu
		fi
	done

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "   Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmess$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmessgrpc$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
asu=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
ask=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF`
grpc=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "vmess-grpc",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmess_base643=$( base64 -w 0 <<< $vmess_json3)
vmesslink1="vmess://$(echo $asu | base64 -w 0)"
vmesslink2="vmess://$(echo $ask | base64 -w 0)"
vmesslink3="vmess://$(echo $grpc | base64 -w 0)"
systemctl restart xray > /dev/null 2>&1
service cron restart > /dev/null 2>&1
END
TRX="
<code>INFO MASKU -Transaksi</code>
<code>────────────────────</code>
<b>  ⚠️TRANSAKSI VMESS WS⚠️      </b>
<code>────────────────────</code>
<code>🌟Owner   : $OWNER</code>
<code>🌟Detail  : $AKUN</code>
<code>🌟Durasi  : $exp</code>
<code>🌟Server  : $domain</code>
<code>────────────────────</code>
<i>Notifikasi Via lawonvpn</i>
<b>Tele : @lawonvpn</b>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL
clear
clear
echo -e "\033[1;36m───────────────────────\033[0m"
echo -e " ${COLBG1}    ∆ CREATE VMESS USER ∆           ${NC} "
echo -e "\033[1;36m───────────────────────\033[0m"
echo -e "$COLOR1 ${NC} Remarks       : ${user}"
echo -e "$COLOR1 ${NC} Expired On    : $exp" 
echo -e "$COLOR1 ${NC} Domain        : ${domain}" 
echo -e "$COLOR1 ${NC} Quota         : ${quota}GB" 
echo -e "$COLOR1 ${NC} limit ip      : ${limit}" 
echo -e "$COLOR1 ${NC} Port TLS      : ${tls}" 
echo -e "$COLOR1 ${NC} Port none TLS : ${none}" 
echo -e "$COLOR1 ${NC} Port  GRPC    : ${tls}" 
echo -e "$COLOR1 ${NC} id            : ${uuid}" 
echo -e "$COLOR1 ${NC} alterId       : 0" 
echo -e "$COLOR1 ${NC} Security      : auto" 
echo -e "$COLOR1 ${NC} Network       : ws" 
echo -e "$COLOR1 ${NC} Path          : /vmess" 
echo -e "$COLOR1 ${NC} Path WSS      : wss://bug.com/vmess" 
echo -e "$COLOR1 ${NC} ServiceName   : vmess-grpc" 
echo -e "\033[1;36m───────────────────────\033[0m"
echo -e "$COLOR1 ${NC} Link TLS : "
echo -e "$COLOR1 ${NC} ${vmesslink1}" 
echo -e "$COLOR1 ${NC} "
echo -e "\033[1;36m───────────────────────\033[0m"
echo -e "$COLOR1 ${NC} Link none TLS : "
echo -e "$COLOR1 ${NC} ${vmesslink2}" 
echo -e "$COLOR1 ${NC} "
echo -e "\033[1;36m───────────────────────\033[0m"
echo -e "$COLOR1 ${NC} Link GRPC : "
echo -e "$COLOR1 ${NC} ${vmesslink3}"
echo -e "\033[1;36m───────────────────────\033[0m"
echo ""
###VTURBOTTRANSAKSINEXUPDATE
read -n 1 -s -r -p "   Press any key to back on menu"
menu-vmess
}
if [ ! -e /etc/vmess ]; then
  mkdir -p /etc/vmess
fi

if [ -z ${quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g');
d=$(( ${c} * 1024*1024*1024 ));

if [[ ${c} != "0" ]]; then
echo "${d}" > /etc/vmess/${user}
fi
DATADB=$(cat /etc/vmess/.vmess.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vmess/.vmess.db
fi
echo "### ${user} ${exp} ${uuid}" >>/etc/vmess/.vmess.db
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m          MENU MANAGER VMES           \E[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;93m〔⎆〕 ${grenbo}1.${NC} \033[0;36mCreating a Vmess Account${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}2.${NC} \033[0;36mRenew a Vmess Account${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}3.${NC} \033[0;36mDelete Vmess Account${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}4.${NC} \033[0;36mCheck Vmess Account${NC}"
#echo -e "\033[1;93m〔⎆〕 ${grenbo}5.${NC} \033[0;36mEdit Quota Vmess${NC}"
#echo -e "\033[1;93m〔⎆〕 ${grenbo}6.${NC} \033[0;36mEdit Limit user Vmess${NC}"
echo -e  "\033[1;93m〔⎆〕 ${grenbo}0.${NC} \033[0;36m Exit${NC}"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
01 | 1) clear ; addvmess ;;
02 | 2) clear ; renewvmess ;;
03 | 3) clear ; delvmess ;;
04 | 4) clear ; cekvmess ;;
00 | 0) clear ; menu ;;
*) clear ; menu-vmess ;;
esac

       
