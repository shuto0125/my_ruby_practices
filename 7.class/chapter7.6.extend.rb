# 継承
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # to_s をオーバーライド
  def to_s
     "name: #{name}, price: #{price}"
  end
end

product = Product.new('BIGFISH', 1000)
p product.name
p product.price
p product.to_s

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    # すでにスーパークラスに存在している属性
    # @name = name
    # @price = price

    # スーパークラスを呼び出す
    super(name, price)
    @running_time = running_time
  end

  # to_s をオーバーライド
  # スーパークラスのメソッドをsuperで呼び出せる!!
  def to_s
    "#{super} rinning time: #{running_time}"
 end
end

dvd = DVD.new('inter stellar', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time

p dvd.to_s



# クラスメソッドの継承

class Foo
  def self.hello
    'hello~~~!'
  end
end

class Bar < Foo
end

p Foo.hello
p Bar.hello