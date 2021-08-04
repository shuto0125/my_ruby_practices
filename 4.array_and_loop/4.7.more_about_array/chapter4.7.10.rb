['apple', 'melon', 'orange']


# %w で文字列の配列を作成できる
p %w(apple melon orange)

# 改行しても可能
p %w(
  apple
  melon
  orange
)

s = 'apple melon orange'
p s

# 式展開や改行文字やタブ文字などw含めたい時は大文字！ %W


p %w(#{s}) #=> ["\#{s}"]

p %W(#{s}) #=> ["apple melon orange"]