class CashRegister
  
  attr_accessor :total, :discount, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transactions = []
  end
  
  def add_item(thing, price, quantity)
    @total = @total + price*quantity
    @transactions << price
    count = quantity
  end
end
