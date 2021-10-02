# シンボルがキーになる場合は、＝＞を使わずに"シンボル: 値"という記法でハッシュを作成できます。
# コロン の位置が左から右に変わります。
h1 = { japan: :yen, us: :dollar, india: :rupee }

p h1

#=> {:japan=>:yen, :us=>:dollar, :india=>:rupee}