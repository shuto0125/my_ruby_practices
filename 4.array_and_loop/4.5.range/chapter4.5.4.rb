# 値が連続する配列を作成する

p (1..5).to_a
p (1...5).to_a


p ('a'..'k').to_a
p ('a'...'k').to_a


# splat展開

p [*1..5]
p [*1...5]