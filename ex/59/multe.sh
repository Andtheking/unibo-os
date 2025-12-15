cut ./multe.txt --delimiter="	" --fields=3 | 
	uniq --count | 
	while read A B; 
	do 
		echo "$B	$A"; 
	done
