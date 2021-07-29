# map / collect

# mapメソッド(エイリアスメソッドはcollect)

# 各要素に対してブロックを評価した結果を新しい配列にして返します。

numbers = [1, 2, 3, 4, 5]
new_numbers = []

numbers.each { |n| new_numbers << n * 10 }
p new_numbers

# mapメソッドを使うとブロックの戻り値が配列の要素となる新しい配列が作成されるため
# mapメソッドの戻り値をそのまま新しい変数に入れることができます。

numbers2 = [1, 2, 3, 4, 5]

new_numbers2 = numbers2.map { |n| n * 10 }

p new_numbers