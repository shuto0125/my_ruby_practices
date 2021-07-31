def puts_gollege_work_from_number(number)

  # numberを 3と5の公倍数15で割った余が0の時
  # 'GollegeWork' をputs
  if number % 15 == 0
    puts 'GollegeWork'

  # numberを 5で割った余が0の時
  # 'Work' をputs
  elsif number % 5  == 0
    puts 'Work'

  # numberを 3で割った余が0の時
  # 'Golleg' をputs
  elsif number % 3 == 0
    puts 'Gollege'

  #それ以外の時 number をputs
  else
    puts number
  end

end

# +1しないと0から始まる
# 100.times do |number|
#   puts_gollege_work_from_number(number + 1)
# end

# 1から始まる
# (1..100).each do |number|
#   puts_gollege_work_from_number(number)
# end

# 1から始まる
1.upto(100) do |number|
  puts_gollege_work_from_number(number)
end