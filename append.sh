#this script looks for all the files not starting with PROD
#searches for the KEY_WORD and inserts TEXT_TO_INSERT below the KEY_WORD
KEY_WORD=fram-server-log
TEXT_TO_INSERT=fram-server-debug-level=off
for file in  ` ls [!PROD]*|xargs grep -rL "$KEY_WORD"`; do
sed -i '/fram-server-log/a fram-server-debug-level=off' $file
grep $TEXT_TO_INSERT $file
done

