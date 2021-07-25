### メソッドの戻り値

# 戻り値に関する情報はメソッド定義に出てきません
# (def int add(a, b)のように戻り値の方情報を書いたりすることはありません)

# Rubyは最後に評価された式がメソッドの戻り値になるのが特徴です。
# return のようなキーワードは不要です。
# 実はRubyにもreturnがあるので、先ほどのaddメソッドは次のように書くこともできます。
# しかし、Rubyではreturnを使わない書き方の方が主流です。

def add(a, b)
  # returnも使えるが、使わない方が主流
  return a + b
end

p add(1,2) #=> 3

# なお、returnはメソッドを途中で脱出する場合に使われることが多いです。

country = 'italy'

def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  # (nil? はオブジェクトがnilの場合にtrueを返すメソッド)
  return 'countryを入力してください' if country.nil? #returnがないとnilの場合は'???'が返る

  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end
end

p greeting(nil) #=> "countryを入力してください"

p greeting('japan') #=> "こんにちは"