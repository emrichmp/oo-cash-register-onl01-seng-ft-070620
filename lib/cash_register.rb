class CashRegister
  
  attr_accessor :total, :discount, :price, :quantity#, :items
  attr_reader :items
  
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
      "There is no discount to apply."
    else
      self.total = (self.total - (0.01*@discount*@total).to_i)
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def void_last_transaction
    self.total = @total - @transactions.pop
    if @transactions.length == 0
      @total = 0
    end
  end
  
end
