#!/bin/bash
cat <<EOF
<html>
<body>
CPU count: 
EOF

cat /proc/cpuinfo | grep -E "^processor" | wc -l 

echo -n "<br/><pre>"
df -h
echo -e "\r\n"
cat /proc/meminfo

echo -n "</pre>"

cat <<EOF
</body>
</html>
EOF
echo -e "\r\n" 
