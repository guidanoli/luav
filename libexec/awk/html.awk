/<\/TR>/ { row += 1; }

/<TD CLASS="name">/ {
	gsub(/<[^>]+>/, "")
	data[row]["name"] = $0
}

/<TD CLASS="sum">/ {
	gsub(/<BR>/, FS)
	gsub(/<[^>]+>/, "")
	data[row]["md5"] = $2
	data[row]["sha1"] = $4
}

END {
	for(row in data)
		print(data[row]["name"], data[row]["sha1"], data[row]["md5"])
}
