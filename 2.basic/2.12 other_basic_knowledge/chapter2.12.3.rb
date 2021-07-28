### 式(Expression)と文(Statement)

# 文とみなされるような要素が式になっていることが多いです
# 式: 値を返し、結果を変数に代入できるものが式
# 文: 値を返さず、変数に代入しようとすると構文エラーになるものが文

# if文が値を返すので変数に代入できる。
a =
  if true
    '真です'
  else
    '偽です'
  end

p a #=> "真です"

# メソッドの定義も実は値(シンボル)を返している。
b = def foo; end
p b #=> :foo


# 厳密に言えばRubyのif文は文ではなく、「if式」ですし、
# メソッド定義の構文も「メソッッド定義式」の呼び方が実態に即しています。

# Rubyでは「分のように見えるが実は式」という要素が多い
# (やろうと思えば戻り値を活用できる)ことは認識しておきましょう。