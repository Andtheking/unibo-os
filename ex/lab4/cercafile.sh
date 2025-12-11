testDir=/usr/include
for i in $testDir/?{c..g}*;
do
    if (( ${#i} < 18 || ${#i} > 23)); 
    then
	    echo ${#i} - $i
    fi
done
