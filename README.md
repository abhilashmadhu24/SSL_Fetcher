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

If the host server is cPanel hosted and need to fetch SSL status of domains from that server, just uncomment line number 14 and 15 from script file.


#OUTPUT

   ![ssl](https://user-images.githubusercontent.com/50264439/132498436-03632059-50fb-4965-8738-1b52954722d1.png)
   
                                                       
                                                       

