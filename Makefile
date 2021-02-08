versions/.index: versions
	curl -s https://www.lua.org/ftp/ | \
		awk '/<\/TR>/ { row += 1; } /<\/TD>/ { print row, $$0 }' | \
		sed 's/<\/TD>//g; s/<TD CLASS="\([^\"]*\)">/\1 /g; s/<A HREF="\([^\"]*\)">.*/\1/g; s/\(^[0-9]*\) [^ ]* md5: \([^<]*\)<BR>sha1: \(.*\)/\1 md5sum \2\n\1 sha1sum \3/g' | \
		awk '{ data[$$1][$$2] = $$3 } END { for (i in data) print(data[i]["name"], data[i]["sha1sum"], data[i]["md5sum"], data[i]["date"], data[i]["size"]) }' > $@

versions:
	mkdir -p versions
