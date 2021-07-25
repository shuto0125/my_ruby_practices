### メソッドの定義

# defを使ってメソッドを定義します。

def add(a, b)
  a + b
end

p add(1,2) #=> 3


# メソッド名も変数名と同じルールになっています。
# 小文字のスネークケースで書きます。

def hello_world
  'Hellow,world!'
end
p hello_world

# メソッド名に数字を入れる場合
def hello_world_2
  'Hellow,world! 2'
end
p hello_world_2