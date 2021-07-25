### ?で終わるメソッド

# ?で終わるメソッドは習慣として真偽値を返すメソッドになっています。

# から文字列であればtrue, else false
p ''.empty?
p 'abc'.empty?

# 引数の文字列が含まれていればtrue, else false
p 'watch'.include?('at')
p 'watch'.include?('in')

# 奇数ならtrue, else false
p 1.odd?
p 2.odd?

# 偶数ならtrue, else false
p 1.even?
p 2.even?

# オブジェクトがnilであればtrue, else false
p nil.nil?
p 'abc'.nil?
p 1.nil?