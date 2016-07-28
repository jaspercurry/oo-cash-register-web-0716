
class CashRegister

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def total=(total) #why does this have an =
    @total = total 
  end

  def add_item(title, price, quantity = 1) #why does this not have an equal?
    @last_item_price = [title, price, quantity]
    self.total = self.total + (price * quantity)
    quantity.times do 
    @items << title
    end
  end

  def apply_discount
    self.total=(total * ((100 - self.discount)/100.00))
    if self.discount == 0
    "There is no discount to apply."
    else
    "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items
  end


  def void_last_transaction
    self.add_item(@last_item_price[0], @last_item_price[1]*-1, @last_item_price[2])
  end

end
