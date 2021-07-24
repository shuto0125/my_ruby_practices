### 文字列の比較

# 文字列が同じかどうか調べる場合は　== を、
# 異なる値かどうかを調べる場合は != を使います。

p 'ruby' == 'ruby' #=> true
p 'ruby' == 'Ruby' #=> false

p 'ruby' != 'perl' #=> true
p 'ruby' != 'ruby' #=> false

puts "\n"

# <, <=, >, >= をつかって大小関係を比較することも可能です。
# この場合は、文字コードが大小比較の基準になります。

p 'a' < 'b' #=> true
p 'a' < 'A' #=> false
p 'a' > 'A' #=> true

p 'abc' < 'def' #=> true
p 'abc' < 'ab' #=> false
p 'abc' < 'abcd' #=> true

p 'あいうえお' < 'かきくけこ' #=> true
