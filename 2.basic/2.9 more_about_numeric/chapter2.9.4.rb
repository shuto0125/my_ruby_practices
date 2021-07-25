### 数値クラスのあれこれ

# 整数 Integerクラス
# 少数 Floatクラス

p 10.class
p 1.5.class

# 非常に大きな数は Bignumクラス それ以外はFixnumクラスがありましたが、
# Ruby2.4以降は整数は全てIntegerクラスになりました。

p 10.class
p 9999999999999999999999999999999999999999999999999999999.class

# 有理数リテラル Rational  を使う(3rが有理数リテラル)
# Ratio : 英訳で「比」
r = 2 / 3r
p r
p r.class

# 文字列から有理数に変換する
r = '2/3'.to_r
p r
p r.class

# 複素数リテラル Complex を使う(0.5iが複素数リテラル)
c = 0.3 - 0.5i
p c
p c.class

# 文字列から複素数に変換する
c = '0.3-0.5i'.to_c
p c
p c.class