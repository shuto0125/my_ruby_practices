### フォーマットを指定して文字列を作成する

p sprintf('%0.3f', 1.2) #=> "1.200"

# フォーマット文字列 % 表示したいオブジェクト の形式で書いても同じ結果が得られます。
p '%0.3f' % 1.2 #=> "1.200"


# 複数渡すこともできます
p sprintf('%0.3f + %0.3f + %0.3f', 1.2, 0.48, 2.33)
p '%0.3f + %0.3f + %0.3f' % [1.2, 0.48, 2.33]