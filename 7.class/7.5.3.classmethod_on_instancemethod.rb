class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price

  end

  # 金額を形成するクラスメソッド
  def self.format_price(price)
    "#{price}円"
  end

  def show_name_and_price
    # インスタンスメソッドからクラスメソッドを呼び出す
    formatted_price = Product.format_price(price)
    "name: #{name}, price #{formatted_price}";
  end
end

product = Product.new('A great movie', 1000)

p product.to_s

p product.show_name_and_price

p product.is_a?(Object)
p product.is_a?(String)

