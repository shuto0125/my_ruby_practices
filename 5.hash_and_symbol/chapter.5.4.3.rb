# メソッドのキーワード引数とハッシュ

def buy_burger(menu, drink: false, potato: false)

  p "get #{menu}BURGER!! "

  if drink
    p 'get DRINK! '
  end

  if potato
    p 'get POTATO! '
  end

end

buy_burger('cheese')
#=> "get cheeseBURGER!! "

buy_burger('fish', drink: true, potato: false)
#=> "get fishBURGER!! "
#=> "get DRINK! "

# buy_burger('normal', salad: true)
# unknown keyword: salad (ArgumentError)

# キーワード引数と一致するハッシュであれば、メソッドの引数として渡すことができる
params = { drink: true, potato: false }
buy_burger('bug', params)
# "get bugBURGER!! "
# "get DRINK! "

# rails のparamsの渡し方と繋がる感！