#!/usr/bin/env gawk 
# 天体望遠鏡博物館の調整さんより
# 各人の出席予定日数、コメント
# 抽出
# awk -F',' -f museum.awk chouseisan.csv

# YYYY年MM月登館予定表 -> MM/
NR==1 {
	gsub("^.*年","",$1)
	gsub("月.*","",$1)
	month=$1"/"
}

# 記入者の名前を格納した配列
NR==11{
	for(x=0;x<=NF; x++){
		member[x] = $x
	}
}

# 出席日数を数えて格納する配列 
$0~month {
	for(x=2; x<=NF; x++){
		days[x]+=0
	       	if ($x=="◯"){
		       	days[x]+=1
	       	} 
	} 
} 
# コメントの配列。ない人は"なし"
$1=="コメント" {
	for(z=2;z<=NF;z++){
		comm[z]=$z
		if (comm[z]=="") {
		       	comm[z]="なし"
		}
	}
}
END{
 	for(y=2; y<=NF; y++) {
 	       	print member[y], days[y], comm[y]
        	}
}
