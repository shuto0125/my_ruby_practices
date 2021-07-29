a = [1, 2, 3, 1, 2, 3]
# 配列からあたいが２の要素を削除
a.delete(2)

p a


#配列から値が奇数の要素を削除する

b = [1, 2, 3, 1, 2, 3]

b.delete_if do |n|
  n.odd?
end

p b