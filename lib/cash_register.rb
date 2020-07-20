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
  
  def add_item(thing, price, quantity = 1)
    @total = @total + price*quantity
    @transactions << price
    count = quantity
    if count != 0
      @items << thing
      count -= 1
    end
  end
  
  def apply_discount()
    if discount == 0
      puts "There is no discount to apply"
    else
      self.total = (@total - (0.01*@discount*@total).to_i)
      "After the discount, the total comes to"
    end
  end
end
