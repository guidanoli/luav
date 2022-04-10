##############################################################################
# AWK script for extracting Lua version information from `lua.org/ftp`
##############################################################################

##############################################################################
# Table layout in `lua.org/ftp` (as of 2022-04-09)
# ------------------------------------------------
# <TR>
# <TD CLASS="name"><A HREF="[Link to File]">[File name]</A></TD>
# <TD CLASS="date">[Date in YYYY-MM-DD format]</TD>
# <TD CLASS="size">[File size in bytes]</TD>
# <TD CLASS="sum">[File SHA-256 digest]</TD>
# </TR>
##############################################################################

/<\/TR>/ {
	row += 1;
}

/<TD CLASS="name">/ {
	gsub(/<[^>]+>/, ""); # Remove HTML tags
	data[row]["name"] = $0;
}

/<TD CLASS="sum">/ {
	gsub(/<[^>]+>/, ""); # Remove HTML tags
	data[row]["sum"] = $0;
}

END {
	for(row in data) {
		print(data[row]["name"],
			  data[row]["sum"]);
	}
}
