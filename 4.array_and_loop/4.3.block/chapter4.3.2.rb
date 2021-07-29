# eachメソッドの役割は配列の要素を最初から最後まで順番に取り出すことです。
# 取り出した要素をどう扱うのかはブロックに記載します。
# do ~ end あまでがブロックです。

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end

p sum
