### デフォルト値付きの引数

# Ruby ではメソッドを呼び出す際に引数の過不足があるとエラーになります

def greeting(country)
  if country  == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

# 引数が少ない
# p greeting
# wrong number of arguments (given 0, expected 1) (ArgumentError)

# 引数がちょうど
p greeting('japan')

# 引数が多い
# p greeting('us', 'japan')
# wrong number of arguments (given 2, expected 1) (ArgumentError)


# Rubyではメソッッドの引数の数を柔軟に返る方法がいくつかあります。
# そのうち一つがデフォルト値付きの引数です。

def メソッド(引数1 = デフォルト値1, 引数2 = デフォルト値2)
  #　必要な処理
end


# 引数なしの場合はcountryに'japan'を設定する
def greeting2(country = 'japan')
  if country  == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

p greeting2
p greeting2('us')


# デフォルト値ありとデフォルト値なしの引数を混在させることも可能です。

def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d},"
end

p default_args(1, 2)
p default_args(1, 2, 3)
p default_args(1, 2, 3, 4)


# デフォルト値は固定の値だけでなく、動的に変わる値や、他のメソッドの戻り値を指定したりすることもできます。

def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo #=> time: 2021-07-25 17:52:16 +0900, message: BAR