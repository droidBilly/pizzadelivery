class Order

  attr_accessor :dishes

  def initialize(dishes = [])
    @dishes = dishes
  end

  def add_dish(dish)
    @dishes << dish
  end
end
