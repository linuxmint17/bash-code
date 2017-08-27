#!/usr/bin/env  bash
#program to output a system information page 
TITLE="System Information Report for $HOSTNAME"
CURRENTTIME=$(date +"%x %r %Z ")
TIMESTAMP="Generated at ${CURRENTTIME} by ${USER}"
cat <<  _EOF_
<HTML>
	<head>
			<title>${TITLE}</title>
		</head>
		<body>
		<h1> $TITLE </h1>
               <p>${TIMESTAMP}</p>
		</body>
</html>
_EOF_
