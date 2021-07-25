### case文

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

# caseの場合

greeting =
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'hello'
  when 'italy'
    'ciao'
  else
    '???'
  end

p greeting #=> "ciao"


# when節に複数の値を指定する

country = 'アメリカ'

greeting =
  case country
  when 'japan', '日本'
    'こんにちは'
  when 'us', 'アメリカ'
    'hello'
  when 'italy', 'イタリア'
    'ciao'
  else
    '???'
  end

p greeting #=> "ciao"

# 他にも、whenに渡す値としてRangeオブジェクトや正規表現オブジェクト、
# クラスオブジェクトなどを使うこともできます。