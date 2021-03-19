!/^#/ { stop = 1 }

/^# .+/ && !stop {
	printf $2
	for (i = 3; i <= NF; i++)
		printf " " $i
	printf "\n"
}
