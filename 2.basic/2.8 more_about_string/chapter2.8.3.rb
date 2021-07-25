### ヒアドキュメント(行指向文字列リテラル)

# 文字列は途中で改行することもできます。

puts "Line 1,
Line 2"

puts 'Line 1,
Line 2'


# しかし、複数行にわたる長い文字列を作成する場合はヒアドキュメントを使った方がすっきり書けます。
# 識別子は自由につけられます。*記述する文字列に含まれない文字列を使います(ちなみに含まれる文字列を使っても出力可能)

a = <<TEXT
長い文字列のテスト。
長い文字列のテスト長い文字列のテスト長い文字列のテスト。
TEXT
puts a

html = <<HTML
<div>
  <h1>タイトル</h1>
</div>
HTML

puts html


# <<-TEXT のように-を入れると、最後の識別子をインデントさせることができます。
# メソッドの内部でヒアドキュメントを使う場合など識別子をインデントさせたい場合に便利です。

def some_method
  <<-TEXT
  ヒアドキュメントのテスト。
  <<-を使うと最後の識別子をインデントさせることができます。
  - がないと、下記エラーが発生します。
  chapter2.8.3.rb:34: syntax error, unexpected end-of-input, expecting tSTRING_CONTENT or tSTRING_DBEG or tSTRING_DVAR or tSTRING_END
  TEXT
end

puts some_method

# ~ を使うと、内部の文字列をインデントさせても先頭の空白部分が無視されます。
def some_method_2
  <<~TEXT
  ヒアドキュメントのテスト。
  <<-を使うと最後の識別子をインデントさせることができます。
  ~ がないと、下記エラーが発生します。
  TEXT
end

puts some_method_2


# ヒアドキュメントの中では式展開が有効です。

name = 'Alice'

a = <<TEXT
Welcome, #{name}!
以下のメッセージをご覧ください。
TEXT

puts a

# <<'TEXT'のように識別子をシングルクオートで囲むと式展開が無効になります。
name = 'Alice'

a = <<'TEXT'
Welcome, #{name}!
以下のメッセージをご覧ください。
TEXT

puts a

# <<"TEXT"のように識別子をダブルクオートで囲むと式展開は有効になります。(<<TEXTと同じ)
name = 'Alice'

a = <<"TEXT"
Welcome, #{name}!
以下のメッセージをご覧ください。
TEXT

puts a


# 開始ラベルの<<識別子は1つの式とみなされます。
# <<識別子をメソッドの引数として渡したり、<<識別子に対してメソッドを呼び出したりすることができます。

# prepend は渡された文字列を先頭に追加するメソッド
a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT

puts a


# ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す

b = <<TEXT.upcase
Hello,
good-bye.
TEXT
puts b