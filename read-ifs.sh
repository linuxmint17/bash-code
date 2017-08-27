#!/usr/bin/env bash
#read-ifs:read file fields from a file
FILE=/etc/passwd
read -p "Enter a user name > " user_name
file_info=$(grep "^${user_name}" $FILE)
if [[  -n "$file_info" ]]; then
	IFS=":" 
	read user pw uid gid name home shell <<<"$file_info"
	echo "User=$user
		  UID=$uid
		  GID=$gid
		  Full name=$name
          Home Dir=$home
          SHELL=$shell
           "
 else
 	echo "no such user $user_name"
 	exit 1
fi