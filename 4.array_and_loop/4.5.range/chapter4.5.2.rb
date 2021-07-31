# n以上m以下、n以上m未満の判定をする


# 不等号の場合

def liquid?(temperture)
  0 <= temperture && temperture < 100
end

p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)


def liquid?(temperture)
  (0...100).include?(temperture)
end

p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

