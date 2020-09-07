#!/usr/bin/env awk

$3~"remain"{
	gsub("n/a",0,$3)
	gsub("remaining time:","",$3)
	gsub("[	 ]","",$3)
	gsub("d","*86400+",$3)
	gsub("h","*3600+",$3)
	gsub("m","*60+",$3)
	gsub("s","",$3)
	gsub("+[^0-9]","",$3)
	gsub("\r","",$3)
       	print $3 }
