
# 処理している要素の添字も取得したい場合

fruits = ['apple', 'melon', 'orange']

p fruits.each_with_index{ |fruit, i| puts "#{i} : #{fruit}" }