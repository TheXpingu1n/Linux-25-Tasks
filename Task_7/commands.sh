cut -f 1 keys.txt | sort | uniq -d
cut -f 2 keys.txt | sort | uniq -d
grep -o "[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}" data.txt
grep -o "\(https\?://\|www\.\)[^[:space:]]\+[[:alnum:]]" data.txt
grep -o "+\?[[:digit:]]\{12,13\}" data.txt
