#!/usr/bin/env bash
#genpass: generate passwd with 12 chars ,only 
#with ><+-{}:;,&A-Za-z s  and which must includes 
#at least one special char and numbers and captical
#letters and normal letters
PASSWD=$(cat /dev/urandom |tr --delete --complement "[:alnum:][=+=][=-=][={=][=}=][=:=][=;=][='=][=&=]" |fold --width=12|head --lines=1)
echo "$PASSWD"
