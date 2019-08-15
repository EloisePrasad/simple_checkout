class Items

attr_reader :item_list

  def initialize
    @item_list = {
      "bread" => 3,
      "sugar" => 2,
      "milk" => 2,
      "chicken" => 6,
      "pasta" => 5
    }

  end

  def price(item)
    @item_list.fetch(item)
  end

end
