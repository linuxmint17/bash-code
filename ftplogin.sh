#!/usr/bin/env bash
#Script to retrieve a file Via FTP
FTP_SERVER=ftp.us.debian.org
FTP_PATH=/debian/dists/Debian9.1/main/installer-amd64/current/images/cdrom
REMOTE_FILE=debian-cd_info.tar.gz
ftp -n <<- _EOF_
open $FTP_SERVER
user anonymous suse@linux-xyz
cd $FTP_PATH
hash
get $REMOTE_FILE
bye
_EOF_
ls -l $REMOTE_FILE
