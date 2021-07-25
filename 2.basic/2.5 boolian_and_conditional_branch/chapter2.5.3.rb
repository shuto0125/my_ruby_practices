### if文

# 「if文が戻り値を返す」という性質を利用して、if文の戻り値を変数に代入することもできます。

country = 'italy'

greeting = 
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end

p greeting #=> "ciao"


# Rubyのif文は修飾子として文字の後ろに置くことができます。
# if修飾子は後置ifと呼ばれることもあります。

point = 7
day = 1

# 1日であればポイント5倍
if day == 1
  point *= 5
end
p point #=> 35

point2 = 7
# 1日であればポイント5倍(if修飾子・後置if)
point2 *= 5 if day == 1
p point2 #=> 35


# if と elsif の後ろに then を入れることもできます。
# then を入れると条件とその条件が真だった場合の処理を1行に押し込めることもできます。
# 使用頻度はあまり高くありません。

country = 'italy'

greeting =
  if country == 'japan' then 'こんいちは'
  elsif country == 'us' then 'hello'
  elsif country == 'italy'then 'ciao'
  else '???'
  end

p greeting #=> "ciao"