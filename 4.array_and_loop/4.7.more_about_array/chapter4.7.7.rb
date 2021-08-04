# メソッドの可変長引数

# 可変長引数は配列として受け取ることができます。
# 配列の前に * を置いて展開することを「splat展開(operator)」と言います。
# splatで検索すると血飛沫みたいなのがたくさん検索にあがってきて、ホラー

# join メソッドもおまけに。 .join('と') で、引数の区切り文字を使って、
# 配列を一つの文字列にするメソッドです。

# names のままだったら、classは String
# *names で可変長引数にすると、 classは Array に変わります。

def greeting(*names)
  "#{names.join('と')}、こんにちは〜〜！"
end


p greeting('松田')
p greeting('松田','五十嵐')
p greeting('松田','五十嵐','椎名')

# =>
# "松田、こんにちは〜〜！"
# "松田と五十嵐、こんにちは〜〜！"
# "松田と五十嵐と椎名、こんにちは〜〜！"