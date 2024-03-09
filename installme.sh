
#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
cd /var/www/html 
wget https://github.com/Busayor123/web/raw/main/website-mainn.zip
unzip website-mainn.zip
cd website-main
cp -r esigned-html/*  /var/www/html
rm -rf website-mainn.zip
systemctl enable httpd
systemctl start httpd
