#!/bin/bash

echo "#######################"
date
ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then
   echo "HTTPD service is running"
else
   echo "HTTPD service is not running, restarting the service"
   systemctl start httpd
   echo "HTTP Service has been restarted"
   if [ $? is -eq 0 ]
   then
     echo "HTTPD service is running after a successful restart"
   else
     echo "HTTPD service is not running. Please contact the admin"
   fi
fi
echo "########################"