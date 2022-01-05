class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{@name}, price: #{@price}"
  end
end

class DVD < Product
  attr_reader :time

  def initialize(name, price, time)
    @name = name
    @price = price
    @time = time
  end
end

class DVD2 < Product
  attr_reader :time

  def initialize(name, price, time)
    #スーパークラスのinitializeメソッドを呼び出す
    super(name, price)
    @time = time
  end

  def to_s
    # "name: #{@name}, price: #{@price}, time: #{@time}"と同じ
    "#{super}, time: #{@time}"
  end
end

class DVD3 < Product
  def initialize(name, price)
    #引数が同じときsuperだけで呼び出せるが、わざわざ呼び出す必要もなくスーパークラスで処理すれば良い
    super
  end
end

product = Product.new('movie', 1000)
puts product.to_s

dvd = DVD2.new('movie', 1000, 5)
puts dvd.name
puts dvd.price
puts dvd.time
puts dvd.to_s

