#!/bin/bash
#!/bin/sh -e
###################################
#FILE_NAME: /opt/script/file-uncommented-line_HashMark.sh
#Author: qwerty | tinhcx@gmail.com
#LastUpdate: #2021.10.18-14.00.11.055
###################################
#ex: file-uncommented-line.sh <filename>
###################################CONTENT:BEGIN
now1="$(date +'%Y.%m.%d-%H.%M.%S.%3N')"
TEMP_LOC="/opt/temp"; mkdir -p $TEMP_LOC

FileWithFullPath="$1"
FileNameOnly="${FileWithFullPath##*/}"

FileName_WithoutExtension="${FileNameOnly%.*}"
FileExtensionOnly="${FileNameOnly##*.}"

echo "FileWithFullPath         : $FileWithFullPath"
echo "FileNameOnly             : $FileNameOnly"
echo "FileName_WithoutExtension: $FileName_WithoutExtension"
echo "FileExtensionOnly        : $FileExtensionOnly"

echo "=========================="
echo "REMOVE HASH COMMENT: DONE"
#grep -v '^ *#' $FileWithFullPath > $TEMP_LOC/$FileName_WithoutExtension"_RemovedHash".$FileExtensionOnly
grep -o '^[^#]*' $FileWithFullPath > $TEMP_LOC/$FileName_WithoutExtension"."$FileExtensionOnly"_RemovedHash"
sleep 2

echo "=========================="
echo "REMOVE EMPTY LINES: DONE"
#sed '/^$/d' $TEMP_LOC/$FileName_WithoutExtension"_RemovedHash".$FileExtensionOnly > $TEMP_LOC/$FileName_WithoutExtension"_RemovedEmpyLines".$FileExtensionOnly
grep "\S" $TEMP_LOC/$FileName_WithoutExtension"."$FileExtensionOnly"_RemovedHash" > $TEMP_LOC/$FileName_WithoutExtension"."$FileExtensionOnly"_RemovedEmpyLines"
sleep 2

echo "=========================="
echo "RESULT: "
ls -l $TEMP_LOC/$FileName_WithoutExtension*

###################################CONTENT:END
#THE-END
