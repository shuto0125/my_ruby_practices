# throw と catch

# ruby のc throw catch は例外処理と関係ありません。
# ruby では raise と resque を例外処理で使います。


fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]

catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end
