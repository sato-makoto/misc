#
# $ cat test.txt
# aaaab
# d dcdba
# uab  bac
#
# $ gawk  -f count.awk test.txt |sort -nr
# 7 a
# 4 b
# 3 d
# 2 c
# 1 u
#
BEGIN {
	FS = ""
}
{
	gsub(" ", "", $0)
	split($0, line_array)
	for(y in line_array)
		alist[line_array[y]]+=1
}
END{
	for(x in alist)
		print  alist[x], x
}
