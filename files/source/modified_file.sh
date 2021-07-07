cd "${dir}" || exit 1
touch checksum.txt || exit 1
chown root checksum.txt
chmod 600 checksum.txt
printf '%b=== Danh sach file sua doi ===\n' ${PURPLE}
for file in *
do
	[ "$file" = "checksum.txt" ]  && continue
	[ -d "$file" ] && continue
	if test "$(grep $(md5sum $file | awk '{printf "%s\n",$1}') checksum.txt)" == ""
	then
		printf '%b%s%b\n' ${CYAN} "$file" ${NC} 
		md5sum $file | awk '{printf "%s\n",$1}' >> checksum.txt
	fi
done
