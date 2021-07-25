### require

# 組み込みライブラリでない標準ライブラリやgemを利用する場合は,
# そのライブラリを明示的に読み込む必要があります。

# Date.today #=> uninitialized constant Date

require 'date'
p Date.today # <Date: 2021-07-25 ((2459421j,0s,0n),+0s,2299161j)>


# 自分で作成したRubyプログラム(クラスの定義など)を読み込む場合もrequireを使います。

# 自分で作成した sample.rb という同じディレクトリにあるファイルを読み込む場合
# 拡張子の .rb は省略可能です。

# require './sample.rb'
# require './sample'