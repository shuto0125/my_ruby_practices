### 優先度が低い and, or, not

t1 = true
f1 = false

t1 and f1 #=> false

t1 or f1 #=> true

not t1 #=> false

# 高い
# !
# &&
# ||
# not
# and or
# 低い



!f1 || t1 #=> true

not f1 || t1 #=> false


# 優先順位の違いによる実行順序の特徴があるため、
# andやorを&&,||の代わりに使うと思いがけない不具合を招く可能性があります。


# user.valid? && send_email_to user
# 上記は下のように解釈されるため、構文エラーが発生します。
# (user.valid? && send_email_to) user

# and を使うことで実行できます。
# user.valid? and send_email_to user

# &&でも、メソッドに()を使うことでエラーになりません
# user.valid? && send_email_to(user)



def greeting(country)
  country or return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

p greeting(nil)
p greeting('japan')