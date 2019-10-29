DATE=`date  -v -2M '+%Y-%m-%d %H:%M:%S'`
LOG_FILE="/Users/liemvu/Desktop/boot.log"

rm -rf $LOG_FILE
echo "Boot log from $DATE"
log show --predicate 'process == "kernel"' --start "$DATE" >> $LOG_FILE
subl $LOG_FILE