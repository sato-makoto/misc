ddrescue(1) 及び iostat(1) のデータをRで処理するためのスクリプト

* get.sh: get.awkで処理時間のデータを作成(ddrescueの画面ログより)
* percent.sh: percent.awkを実行してddrescueの画面ログから進捗状況のデータを作成
* lists(16,21,23).awk: awk -f lists.awk iostat でグラフのデータを作成
	* lists(16,21).awk はファイルはiostat(1)の古いバージョン向け
	* デバイス名は状況によって変更する必要あり
		* ex: sed -i '/sda/sdg/g;/sdb/sdh/g' \*.awk \*.r
* \*.r: Rscript \*.r でデータ(PNG形式)を作成
