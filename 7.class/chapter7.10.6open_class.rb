# 独自クラスを再定義する
class MyString < String

end

s = MyString.new('Hello')
p s
p s.class

#=> "Hello"
#=> MyString

# オープンクラス 定義済みのクラスそのものにメソッド追加変更できる
class String
  def shuffle
    chars.shuffle.join
    # p chars
  end
end

text = 'I am Sam'
puts text.shuffle


# Railsの例
# 'MyString'.underscore #=> "my_string"
# numbers = [1,2,3]
# 2.in?(numbers) #=> true