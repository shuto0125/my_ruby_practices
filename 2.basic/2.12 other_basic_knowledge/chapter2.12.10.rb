### puts, print, p の違い

# *注意* irbでの出力

# putsメソッド
# 改行を加えて変数の内容やメソッドの戻り値を出力します。
# putsメソッド自身の戻り値はnilです。

puts 123
# 123
# => nil

puts 'abc'
# abc
# => nil

s = "abc\ndef"
puts s
# => "abc\ndef"
# abc
# def
# => nil

a = [1, 2, 3]
puts a
# 1
# 2
# 3
# => nil


# printメソッド
# 改行を加えません。
# 改行文字での改行が反映されず、そのまま改行文字で出力されます。

print 123
# 123=> nil

print 'abc'
# abc=> nil

s = "abc\ndef"
print s
# abc
# def=> nil

print a
# [1, 2, 3]=> nil


# p メソッド
# putsメソッドと同じように改行を加えて出力します。
# ただし、文字列を出力すると、その文字列がダブルクオートで囲まれている点がputsメソッドと異なります。
# pメソッドは引数で渡されたオブジェクトそのものがメソッドの戻り値になります。
# 改行文字での改行が反映されず、そのまま改行文字で出力されます。

p 123
# 123
# => 123

p 'abc'
"abc"
=> "abc"

p a
# [1, 2, 3]
# => [1, 2, 3]



## 用途での使い分け

# puts , print 一般ユーザー向け to_sメソッドを呼び出して文字列に変換しています。
# p 開発者向け  inspectメソッドを呼び出して変換しています。

# inspectメソッドは開発者にとって役立つ情報を返すように実装されているので、開発者向けと見なすことができます。

