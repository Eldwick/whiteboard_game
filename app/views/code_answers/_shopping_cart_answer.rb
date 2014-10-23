############# Circle the 5 errors (result of calling shop put 1700 to console)#############
class ShoppingCart
  <span class="wrong">attr_writer :total_price            # attr_reader :total_price</span> 
  def initialize
    @items = []
    @total_price = 0
  end

  def add_item(item)
   <span class="wrong"> @items < item                     # @items << item </span> 
   <span class="wrong"> @total_price = item.price         # @total_price += item.price </span>
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
  <span class="wrong">cart = ShoppingCart.new("My Cart")       # cart = ShoppingCart.new</span>
  chair = Item.new("Cool Chair 3000", 150)
  table = Item.new("Table-o-matic", 550)
  <span class="wrong">box = Item.new(Box-mate, 1000)           # box = Item.new("Box-mate", 1000)</span>

  cart.add_item(chair)
  cart.add_item(table)
  cart.add_item(box)

  puts cart.total_price
end

shop #1700 in console
