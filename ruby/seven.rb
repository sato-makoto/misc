#!/usr/bin/env ruby
# 7 x 7 マトリックスに
# ランダムなひらがな文字列を出力
# 'ぁ': 12353 - 'ゖ': 12438 まで
# 何か意味ありげな文字列
# 、は出ないっぽいが

small_a = 12353
small_ke = 12438
col = 7
row = 7


col.times {
	myrand = Random.new
	row.times {
		print (myrand.rand(small_a..small_ke)).\
			chr(Encoding::UTF_8)
		print " "
	}
		puts ""
}
