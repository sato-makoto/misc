{
	gsub(" ", "", $0)
	alength = length($0)
	split($0, line_array)
	while(alength > 0) {
		alist[line_array[alength]]+=1
		alength -= 1
	}
}
END{
	for(x in alist)
		print  alist[x], x
}
