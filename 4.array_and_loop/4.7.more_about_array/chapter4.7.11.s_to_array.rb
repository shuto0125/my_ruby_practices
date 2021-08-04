# 文字列を分解して配列に変換することもできます！


# charsメソッドは、１文字１文字を配列にしてくれます！
p 'Ruby'.chars #=> ["R", "u", "b", "y"]

# splitメソッドは引数で渡した区切り文字で文字列を配列に分解するメソッドです！

p 'Ruby,Python,PHP,JavaScript'.split(',')
#=> ["Ruby", "Python", "PHP", "JavaScript"]