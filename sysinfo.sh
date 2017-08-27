#!/usr/bin/env  bash
#program to output a system information page 
TITLE="System Information Report for $HOSTNAME"
CURRENTTIME=$(date +"%x %r %Z ")
TIMESTAMP="Generated at ${CURRENTTIME} by ${USER}"
report_home_space(){
  if [[ $(id -u) -eq 0 ]] ;then
	      cat << _EOF_
        <h2>Home Space Utilization (All Users)</h2>
        <pre>$(du -sh /home/*) </pre>
_EOF_
    else
      cat << _EOF_
      <h2>Horme Space Utilization ($USER)</h2>
      <pre>$(du -sh $HOME) </pre>
_EOF_
    fi
    return
    }
report_uptime()
{
  cat << _EOF_
      <h2>System Uptime</h2>
      <pre>$(Uptime)</pre>
_EOF_
      return
 }
 report_disk_space(){
  cat << _EOF_
      <h2>disk Space Utilization</h2>
      <pre>$(df -h )</pre>
_EOF_
  return
 }

 echo "
       <html>
	<head>
			<title>${TITLE}</title>
		</head>
		<body>
		<h1> $TITLE </h1>
     $(  report_home_space )
     $(report_disk_space)
     $(report_uptime)
               <p>${TIMESTAMP}</p>
		</body>
       </html> "