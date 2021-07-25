### %記法で文字列を作る

# 文字列はシングルクオートやダブルクオートだけでなく、 %記法で作ることもできます。
# %を使うとシングルクオートやダブルクオートをエスケープする必要がありません。


# %q! ！はシングルクオートで囲んだことと同じになる。
puts %q!He said, "Don't speak."! #=> He said, "Don't speak."


# %Q! !はダブルクオートで囲んだことと同じになる。（改行文字や式展開が使える。）
something = "Hello."
puts %Q!He said, "#{something}"! #=> He said, "Hello."

# %! !もダブルクオートで囲んだことと同じになる。
something = "Bye."
puts %!He said, "#{something}"! #=> He said, "Bye."

# 区切り文字は ?^など任意の記号を区切り文字として使えます。
# <,{,(,[ を使う場合は終わりの区切り文字が対応するカッコ(>,}など)になります。


puts %q?He said, "Don't speak."? #=> He said, "Don't speak."
puts %q{He said, "Don't speak."} #=> He said, "Don't speak."