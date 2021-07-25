### その他、文字列作成のいろいろ

# 数値を文字列に変換する。

p 123.to_s

# 配列を連結して一つの文字列にする。

p [10, 20, 30].join #=> "102030"

p [10, 20, 30].join('-') #=> "10-20-30"

# 演算子を使って文字列を繰り返す
p 'HI!' * 10


# String.newで新しい文字列を作る(使用頻度低い)
p String.new('Wowww')

# ダブルクオートと\uを組み合わせてUnicodeのコードポイントから文字列を作成することも可能です。
# windows　ではirb上で実行してもひらがなに変更されません(標準のエンコーディングがWindows-31Jのため)
# Windos環境での確認はファイルに保存してからrubyコマンドで実行が必要です。
p "\u3042\u3044\u3046" #=> "あいう"

