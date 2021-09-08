#Author Abhilash
#/bin/bash

echo "

						    ____  ____   _        ____  _   _  _____  ____  _  __ _____  ____  
                                                   / ___|/ ___| | |      / ___|| | | || ____|/ ___|| |/ /| ____||  _ \ 
                                                   \___ \\___ \ | |     | |    | |_| ||  _| | |    | ' / |  _|  | |_) |
                                                    ___) |___) || |___  | |___ |  _  || |___| |___ | . \ | |___ |  _ < 
                                                   |____/|____/ |_____|  \____||_| |_||_____|\____||_|\_\|_____||_| \_\

							  "

#>domain.txt
#cat /etc/trueuserdomains | cut -d: -f1 >> domain.txt  #uncomment these two lines, if this is cpanel server

DATE=$(date +"%Y-%m-%d")

> results.txt

echo " SSL status Checked on $DATE " >> results.txt

for i in `cat domain.txt`;

do

echo "--------------------------------------------------------------" >> results.txt

echo "Domain Name:" $i >> results.txt

echo  "SSL expiry on: `echo |openssl s_client -servername $i -connect $i:443 2>/dev/null|openssl x509 -noout -dates|grep 'notAfter'|sed 's/notAfter=//'`" >> results.txt

echo |openssl s_client -servername $i -connect $i:443 2>/dev/null|openssl x509 -noout -issuer|sed 's/issuer=/Issuer: /' > issuer

echo  "SSL Provider: `cat issuer | while IFS="," read -r -a  line; do printf "%s\n" "${line[@]}"; done | grep O | cut -d\  -f4-5`" >> results.txt
echo ""

rm -rf issuer;

echo "--------------------------------------------------------------" >> results.txt

done

cat results.txt

echo "

                                                       _____  _   _     _     _   _  _  __ __   __ ___   _   _   _ 
                                                      |_   _|| | | |   / \   | \ | || |/ / \ \ / // _ \ | | | | | |
                                                        | |  | |_| |  / _ \  |  \| || ' /   \ V /| | | || | | | | |
                                                        | |  |  _  | / ___ \ | |\  || . \    | | | |_| || |_| | |_|
                                                        |_|  |_| |_|/_/   \_\|_| \_||_|\_\   |_|  \___/  \___/  (_)
"
