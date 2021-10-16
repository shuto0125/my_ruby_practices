# モンキーパッチ 既存のメソッドの上書き

class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}"

  end
end

user = User.new('Alice')

p user.hello
#=> "Hello, Alice"

# helloメソッドにモンキーパッチをあてて独自の挙動を持たせる
class User

  # 既存のメソッドをhello_originalとして呼び出せるようにしておく
  alias hello_original hello

  def hello
    "#{hello_original}じゃなくて、、、  #{@name}さん、こんにちは〜〜！"
  end
end

p user.hello
#=> "Aliceさん、こんにちは〜〜！"