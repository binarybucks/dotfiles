#!/bin/zsh
# Auths user with username and password at university firewall 
cd /tmp
/opt/local/bin/wget https://nacs.dhbw-stuttgart.de/login-exec.php --no-check-certificate --keep-session-cookies --save-cookies login.cookie -O - > /dev/null
/opt/local/bin/wget https://nacs.dhbw-stuttgart.de/login-exec.php --no-check-certificate --post-data "username=$DHUSERNAME&password=$DHPW" --load-cookies login.cookie -O - > /dev/null 
rm login.cookie
