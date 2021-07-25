### unless文

# Rubyにはifと反対の意味を持つ unless があります。
# 条件がfalseになった場合にだけ処理を実行します。

status = 'error'
if status != 'ok'
  p '何か異常があります'
end

unless status == 'ok'
  p '何か異常があります'
end

status = 'ok'
unless status == 'ok'
  p '何か異常があります'
else
  p '正常です'
end


# unless には elsif に相当するものは存在しません。
# unless は if 同様、unless の戻り値を直接変数に代入したり、
# 修飾子(後置)として分の後ろに置いたりできます。

status = 'error'

message =
  unless status == 'ok'
    p '何か異常があります'
  else
    p '正常です'
  end

p message

p '何か異常があります' unless status == 'ok'


# then を入れることができる点も、if文と同じです。

