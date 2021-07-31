def to_hex(r, g, b)

  # '#' +
  #   r.to_s(16).rjust(2, '0') +
  #   g.to_s(16).rjust(2, '0') +
  #   b.to_s(16).rjust(2, '0')
  # 下記で リファクタリング DRY(Don't Repeat Yourself)化

  # hex = "#"

  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end
  # hex

  #下記でさらにリファクタリング

  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end

end