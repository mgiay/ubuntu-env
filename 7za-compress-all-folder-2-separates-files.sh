#!/bin/bash
#FileName="7za-compress-all-folder-2-separates-files.sh"
#LOC="/opt/script"
#cat $LOC/$FileName|grep "LastUpdate"
######################################################
#LastUpdate: #9:08 2021.10.28, #9:03 2021.10.28
#Author: tinhcx@gmail.com
######################################################
VAR=$(pwd); replace="_"; path_result=${VAR////$replace}; echo "path_result: [$path_result]"
for FileName in *;do
    now1="$(date +'%Y%m%d-%H.%M.%S')"
    echo "Compressing [$FileName]:"
    7za-compress.sh $FileName"_[$path_result]_[$now1]".7z $FileName
done

#THE_END
