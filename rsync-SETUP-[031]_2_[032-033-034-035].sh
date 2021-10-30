#!/bin/bash
#/opt/script/rsync-SETUP-[031]_2_[032-033-034-035].sh
#LastUpdate: #8:46 2021.10.21
####################################
#KET QUA CHINH XAC DEN PHAN NGHIN GIAY
#___________CRON_JOB:BEGIN
#Quet cac IMG chua duoc backup, ca cay thu muc: WEEKLY T7, 12h00:
#T2-1: T3-2: T4-3: T5-4: T6-5: T7-6: CN-7
#00 12 * * 6 /opt/script/rsync-SETUP-[031]_2_[032-033-034-035].sh
#___________CRON_JOB:BEGIN

####################################
#------------------------------PERMISSION_CONFIG:BEGIN
USER_OWNER=root
GROUP_OWNER=root
CHMOD_OWNER=600
#------------------------------PERMISSION_CONFIG:END

#------------------------------RSYNC_COMMAND:BEGIN
#RSYNC INCREMENTAL COMMAND:
#-a, --archive archive mode; equals -rlptgoD (no -H,-A,-X)
#-v, --verbose increase verbosity
#-z, --compress compress file data during the transfer
#-h, --human-readable output numbers in a human-readable format
#-P same as --partial --progress (--progress show progress during transfer)
#-r, --recursive recurse into directories
#-u, --update skip files that are newer on the receiver
#-e, --rsh=COMMAND           specify the remote shell to use

# rsync -vrlHh --stats <SRC> <DST>
# -v, --verbose               increase verbosity
# -r, --recursive             recurse into directories
# -l, --links                 copy symlinks as symlinks
# -H, --hard-links            preserve hard links
# -h, --human-readable        output numbers in a human-readable format
# --stats                     give some file-transfer stats
# --bwlimit=1000
RSYNC_INC_COMM="rsync --stats -avz -e"

CURRENT_YEAR=$(date +'%Y')
CURRENT_MONTH=$(date +'%m')
CURRENT_DATE=$(date +'%d')

#Dung tren NODE1, call NODE2:
SSH_USER_LOGIN="root"
SSH_PORT="65022"
SSH_HOST="10.0.1.32"

#------------------------------RSYNC_COMMAND:END



now1="$(date +'%Y.%m.%d-%H.%M.%S.%3N')"
start_ts="$(date +'%s%3N')"

#------------------------------
#------------------------------
mkdir -p /opt/log/;cd /opt/log/;

#DELETE OLD LOG:
#______________________DELETE_OLD_DATA:BEGIN
FOLDER_DST=/opt/log/
mkdir -p $FOLDER_DST
cd $FOLDER_DST
#Giu lai 7 file moi nhat trong thu muc [$FOLDER_DST]:
/bin/rm  -rf `ls -t rsync*.log | awk 'NR>7'`
#______________________DELETE_OLD_DATA:END

SCRIPT_FILE_NAME="rsync-SETUP-[031]_2_[032-033-034-035].sh"
yes | mkdir -p $SCRIPT_FILE_NAME
LOG_FILE=$SCRIPT_FILE_NAME/$SCRIPT_FILE_NAME-$now1.log
#------------------------------
#------------------------------


#------------------------------------------------------------COMMAND:BEGIN
#******************************SYNC_DATA:BEGIN
#14:48 2018.09.06
#PATH_SRC="/opt/gluster-server/www/upload-daivietgroup/*"
#PATH_DST="/opt/gluster-server/www/upload-daivietgroup/"
PATH_SRC="/opt/setup/*"
PATH_DST="/opt/setup/"


#echo "PATH_SRC: " $PATH_SRC
#echo "PATH_DST: " $PATH_DST
echo "-----------------" >> $LOG_FILE
echo $(date +'%Y.%m.%d-%H.%M.%S.%3N')" | ==>SYNC DATA [PATH_SRC: $PATH_SRC]" >> $LOG_FILE
echo $(date +'%Y.%m.%d-%H.%M.%S.%3N')" | ==>SYNC DATA [PATH_DST: $PATH_DST]" >> $LOG_FILE

#LIMIT 2000Mbps:
#rsync --stats --bwlimit=2000 -avz -e 'ssh -p 65022' root@$SSH_HOST:$PATH_SRC $PATH_DST >> $LOG_FILE

#UNLIMIT BANDWIDTH:
# su - $SSH_USER_LOGIN -c \
# "$RSYNC_INC_COMM 'ssh -p $SSH_PORT' \
# $SSH_USER_LOGIN@$SSH_HOST:\
# $PATH_SRC \
# $PATH_DST" >> $LOG_FILE

#rsync --stats -avz -e 'ssh -p 65022' root@$SSH_HOST:$PATH_SRC $PATH_DST >> $LOG_FILE

SSH_HOST="10.0.1.32"
rsync --stats -avz -e 'ssh -p 65022' $PATH_SRC root@$SSH_HOST:$PATH_DST >> $LOG_FILE

SSH_HOST="10.0.1.33"
rsync --stats -avz -e 'ssh -p 65022' $PATH_SRC root@$SSH_HOST:$PATH_DST >> $LOG_FILE

SSH_HOST="10.0.1.34"
rsync --stats -avz -e 'ssh -p 65022' $PATH_SRC root@$SSH_HOST:$PATH_DST >> $LOG_FILE

SSH_HOST="10.0.1.35"
rsync --stats -avz -e 'ssh -p 65022' $PATH_SRC root@$SSH_HOST:$PATH_DST >> $LOG_FILE

# echo "-----------------"
# echo "RSYNC COMMAND: " "$RSYNC_INC_COMM 'ssh -p $SSH_PORT' $PATH_SRC $SSH_USER_LOGIN@ $SSH_HOST:$PATH_DST";
# echo "-----------------"
#******************************SYNC_DATA:END

sleep 5
echo "" >> $LOG_FILE
echo "" >> $LOG_FILE
echo "" >> $LOG_FILE
echo "" >> $LOG_FILE
echo "" >> $LOG_FILE
#------------------------------------------------------------COMMAND:END

now2="$(date +'%Y.%m.%d-%H.%M.%S.%3N')"
stop_ts="$(date +'%s%3N')"
DIFF=$((stop_ts-start_ts))
hour=$((DIFF/(60*60*1000)))
min=$((DIFF/(60*1000)))
sec=$(((DIFF%(60*1000))/1000))
ms=$(((DIFF%(60*1000))%1000))

cd /opt/log/;
echo "*****************************************"  >> $LOG_FILE
echo "*****************************************"  >> $LOG_FILE
echo "TONG KET:"                                  >> $LOG_FILE

#cat $LOG_FILE | grep SYNC >> $LOG_FILE

cat $LOG_FILE | egrep "SYNC|Number of regular files transferred|Total transferred file size" >> $LOG_FILE
sleep 5

echo "" >> $LOG_FILE
echo "" >> $LOG_FILE
echo "*****************************************"  >> $LOG_FILE
cat $LOG_FILE | egrep "CHOWN|BEGIN|END"           >> $LOG_FILE




echo "####################################" >> $LOG_FILE
echo "**RUNTIME**|[""${hour}:${min}:${sec}.$ms""](h:m:s:msec)" >> $LOG_FILE
echo "STARTING...|"$now1 >> $LOG_FILE
echo "...... DONE|"$now2 >> $LOG_FILE
echo "####################################" >> $LOG_FILE
#RESULT:
# ####################################
# **RUNTIME**|[0:1:26.501](h:m:s:msec)
# STARTING...|2015.09.25-14.08.01.327
# ...... DONE|2015.09.25-14.09.27.828
# ####################################

#THE-END
