Hi folks,

Coming with a very simple script to fetch SSL certificate status of domains from command line. Script output status is email ready, so that it will be helpful for automatic monitoring and audits.

Steps :
```
git clone https://github.com/abhilashmadhu24/SSL_Fetcher.git
cd SSL_Fetcher
open domain.txt in your favorite text editor and add your domains one by one
save the file 
chmod +x ssl_checker.sh
./ssl_checker.sh
```

If the host server is cPanel hosted and ned to fetch SSL status of domains from that server, just uncomment line number 4 and 5 from script file.


#OUTPUT

```
abhilashmadhu@Latitude-3410:~/ssl_checker/SSL_Fetcher$ ./ssl_checker.sh 
                                                   ____  ____   _        ____  _   _  _____  ____  _  __ _____  ____  
                                                  / ___|/ ___| | |      / ___|| | | || ____|/ ___|| |/ /| ____||  _ \ 
                                                  \___ \\___ \ | |     | |    | |_| ||  _| | |    | ' / |  _|  | |_) |
                                                   ___) |___) || |___  | |___ |  _  || |___| |___ | . \ | |___ |  _ < 
                                                  |____/|____/ |_____|  \____||_| |_||_____|\____||_|\_\|_____||_| \_\
                                                                                                                      




 SSL status Checked on 2021-09-08 
--------------------------------------------------------------
Domain Name: yahoo.com
SSL expiry on: Jan 19 23:59:59 2022 GMT
SSL Provider: DigiCert Inc
www.digicert.com
--------------------------------------------------------------
--------------------------------------------------------------
Domain Name: google.com
SSL expiry on: Nov  8 01:37:01 2021 GMT
SSL Provider: Google Trust
--------------------------------------------------------------
--------------------------------------------------------------
Domain Name: facebook.com
SSL expiry on: Oct 18 23:59:59 2021 GMT
SSL Provider: DigiCert Inc
www.digicert.com
--------------------------------------------------------------
--------------------------------------------------------------
Domain Name: ktu.edu.in
SSL expiry on: Apr  8 23:59:59 2022 GMT
SSL Provider: Sectigo Limited
--------------------------------------------------------------
                                                       _____  _   _     _     _   _  _  __ __   __ ___   _   _   _ 
                                                      |_   _|| | | |   / \   | \ | || |/ / \ \ / // _ \ | | | | | |
                                                        | |  | |_| |  / _ \  |  \| || ' /   \ V /| | | || | | | | |
                                                        | |  |  _  | / ___ \ | |\  || . \    | | | |_| || |_| | |_|
                                                        |_|  |_| |_|/_/   \_\|_| \_||_|\_\   |_|  \___/  \___/  (_)
                                                        
                                                       
                                                       
```
