versions/.index: versions
	curl -s https://www.lua.org/ftp/ | \
		awk '/<\/TR>/ { row += 1; } /<\/TD>/ { print row, $$0 }' | \
		sed 's/<\/TD>//g; s/<TD CLASS="\([^\"]*\)">/\1 /g; s/<A HREF="\([^\"]*\)">.*/\1/g; s/md5: \([a-f0-9]*\).*/\1/g' | \
		awk '{ data[$$1][$$2] = $$3 } END { for (i in data) { for (j in data[i]) { printf("%s ", data[i][j]) } printf("\n") } }' > $@

versions:
	mkdir -p versions
