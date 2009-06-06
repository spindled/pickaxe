class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn, @price = isbn, Float(price)
  end
end