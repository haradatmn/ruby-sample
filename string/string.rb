
## String

j="るびぃ"
# 文字エンコーディング
p j.encoding
# 文字数
p j.length
p j.size
# 文字列バイト数
p j.bytesize
# 文字をエンコーディング
e = j.encode("EUC-JP")
p e.encoding

# 文字連結でエラー(エラー内容表示)
j+e rescue p $!
# 文字連結でエラー(エラー場所表示)
j+e rescue p $@

