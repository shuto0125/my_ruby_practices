# select (エイリアスメソッド: find_all)

# 各要素に対してブロックを評価し、
# その戻り値が真の要素を集めた配列を返すメソッドです。

numbers = [1, 2, 3, 4, 5, 6]

p numbers.select{ |n| n.even? }

p numbers.find_all{ |n| n.even? }

p numbers.reject{ |n| n % 3 == 0 }
