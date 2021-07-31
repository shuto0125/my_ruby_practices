# 1~10まで 2つ飛ばしで　繰り返し処理を行う
numbers = []

(1..10).step(2) { |n| numbers << n }

p numbers