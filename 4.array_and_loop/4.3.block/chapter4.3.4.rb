numbers = [1, 2, 3, 4]

sum = 0

numbers.each do |n|
  sum += n
end


sum = 0

numbers.each do |n|
  sum_val = n.even? ? n * 10 : n
  sum += sum_val
end

p sum