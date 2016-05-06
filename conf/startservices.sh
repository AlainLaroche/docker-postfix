#!/bin/bash
cp /main.cf /etc/postfix/main.cf
/bin/echo "Adding the domain $myhostname to postfix main.cf config.";
echo "myhostname = $myhostname" >> /etc/postfix/main.cf
service rsyslog start;
service postfix start;
sleep 20;
tail -f /var/log/mail.log
