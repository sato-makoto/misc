ddrescue(1) and iostat のデータをRで処理するためのスクリプト

* get.sh: get.awkで処理時間のデータを作成
* percent.sh: percent.awkを実行して進捗状況のデータを作成
* lists(16,21,23).awk awk -f lists.awk iostat でグラフのデータを作成
	* デバイス名は状況によって変更する必要あり
* \*.r: Rscript \*.r でデータ(PNG形式)を作成
