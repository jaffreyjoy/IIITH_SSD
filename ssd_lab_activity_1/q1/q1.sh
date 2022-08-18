# regex1="\"\<a[0-z]*\\">"
# regex2="\"[txt$\""
# echo $regex1
grep -o -f regex1.txt $1 | grep -v -f regex2.txt