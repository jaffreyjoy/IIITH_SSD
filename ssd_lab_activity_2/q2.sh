cat /etc/shells | awk -F  "/" '/\/usr\// {print $(NF)}'
