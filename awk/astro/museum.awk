#!/usr/bin/env gawk 
# 天体望遠鏡博物館の調整さんより
# 各人の出席予定日数、コメント
# 抽出
# awk -F',' -f museum.awk chouseisan.csv

# 調整さんのCSVより、以下の条件に合う
# レコードを処理
#
# 日程,参加者A,参加者B,参加者C, ...
# 11/2(土) 午前,△,×,◯, ...
# 11/2(土) 午後,△,×,◯, ...
# 11/3(日) 午前,×,×,◯, ...

# 月からの抽出は廃止

# 記入者の名前を格納した配列
$1=="日程"{
	for(x=2;x<=NF; x++){
		member[x] = $x
	}
}

# $1が数字"/"数字にマッチする行より
# times: 出席(◯)回数を数えて格納する配列 
# t_times: 遅刻早退(△)を数えて格納する配列 
$1~"[0-9]/[0-9]" {
	for(x=2; x<=NF; x++){
		times[x]+=0
		t_times[x]+=0
	       	if ($x=="◯"){
		       	times[x]+=1
	       	} 
	       	if ($x=="△"){
		       	t_times[x]+=1
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
	print "名前\t◯\t△\tコメント"
 	for(y=2; y<=NF; y++) {
 	       	print member[y]"\t"times[y]"\t"t_times[y]"\t"comm[y]
        	}
}
