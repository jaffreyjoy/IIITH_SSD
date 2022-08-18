file_name=$1
nl=$(wc -l "$file_name" | awk '{ print $1 }')
# echo $nl
mid_row_num=$(( nl/2 + nl%2 ))
# echo $mid_row_num
echo $(cat $file_name | awk -v mid="$mid_row_num" 'NR == mid {print $0}')
