
#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
cd /var/www/html 
wget https://github.com/Busayor123/deploy-preschool-website/raw/main/kider.zip
unzip kider.zip
cp -r deploy-preschool-website/*  /var/www/html
rm -rf kider.zip
systemctl enable httpd
systemctl start httpd

 

