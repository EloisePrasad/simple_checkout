require './lib/items'
class Checkout

  attr_reader :total

  def initialize(items = Items.new)
    @total = 0
    @items = items
  end
  def scan(item)
    @total += (@items.price(item))
  end
end
