Time(){
while true
do
 CheckSize
 sleep 5
done
}
CheckSize(){
filename=pattern.sh
maxsize=100
filesize=$(stat -c%s "$filename")
echo "Size of $filename = $filesize bytes."
 
if (( filesize > maxsize )); then
 echo "nope"
 mail -s "Size has exceeded" nnthvenkatesh@gmail.com < /dev/null
else
 echo "fine"
fi
}
Time
