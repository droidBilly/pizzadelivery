class Pizza
  attr_accessor :order_number, :name, :price, :ingredients

  def initialize(order_number, name, price,ingredients = [])
    @order_number = order_number
    @name = name
    @price = price
    @ingredients = ingredients
  end

  def add_ingredient(ingredients)
    if ingredient.kind_of?(Array)
      ingredients.each {|ingredient| @ingredients << ingredient}
    else
      @ingredients  << ingredients
    end
  end

  def print_details
    puts "#{@order_number}: #{@name} - #{@price}€ - #{@ingredients.join(', ')}"
  end

end
