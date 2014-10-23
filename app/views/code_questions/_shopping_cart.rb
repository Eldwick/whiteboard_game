##### Circle the 5 errors (result of calling shop puts 1700 to console) #####
class ShoppingCart
  attr_writer :total_price
  def initialize
    @items = []
    @total_price = 0
  end

  def add_item(item)
    @items < item               
    @total_price = item.price
  end
end

class Item
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

def shop
  cart = ShoppingCart.new("My Cart")
  chair = Item.new("Cool Chair 3000", 150)
  table = Item.new("Table-o-matic", 550)
  box = Item.new(Box-mate, 1000)

  cart.add_item(chair)
  cart.add_item(table)
  cart.add_item(box)

  puts cart.total_price
end

shop #1700
