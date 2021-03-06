### !で終わるメソッド

# !で終わるメソッドは習慣として「使用する際は注意が必要」という意味を持ちます。

a = 'ruby'

# upcaseだと変数aの値は変化しない。
p a.upcase
p a

# upcase!だと変数aの値も大文字に変わる。(破壊的な変更)
p a.upcase!
p a


# !のメソッドが全て破壊的とは限りませんが、何かしらの注意事項があるはずなので、
# !で終わるメソッドを見かけたらどんな注意事項があるか、APIドキュメントなど読んで確認しましょう。

def reverse_upcase!(s)
  s.reverse!.upcase!
end

p s = 'ruby'

p reverse_upcase!(s)

p s

# メソッド名は!や?で終わることができますが、変数名には!,?を使えない点に注意してください。

