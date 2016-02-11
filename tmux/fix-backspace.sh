infocmp "$TERM" | sed -Ee 's/(kbs)=[^,]*/\1=\\177/' -e 's/(kdch1)=[^,]*/\1=\\E[3~/' > "$TERM"
tic "$TERM"
rm -f "$TERM"
