#!/bin/sh

# the output file
FILE=/Users/praveenkumarrana/Documents/Device_Drivers/Exercise3/Test/download.out

# the url to retrieve
URL=http://www.google.co.in

# write header information to the log file
start_date=`date`
echo "START-------------------------------------------------" >> $FILE
echo "" >> $FILE

# retrieve the web page using curl. time the process with the time command.
time (curl --connect-timeout 100 $URL) >> $FILE

# write additional footer information to the log file
echo "" >> $FILE
end_date=`date`
echo "STARTTIME: $start_date" >> $FILE
echo "END TIME:  $end_date" >> $FILE
echo "" >> $FILE
