require_relative "pizza.rb"

class Menu

  attr_accessor :dishes_on_menu

  def initialize
    @dishes_on_menu = []
    @dishes_on_menu << Pizza.new(101, "Verdure", 8,["mozarella",  "homemade tomato sauce"])
    @dishes_on_menu <<Pizza.new(102, "Magherita", 6,["mozarella",  "homemade tomato sauce"])
    @dishes_on_menu << Pizza.new(103, "Spinaci", 7,["mozarella",  "homemade tomato sauce"])
    @dishes_on_menu << Pizza.new(104, "Diavolo", 8,["mozarella",  "homemade tomato sauce"])
    @dishes_on_menu << Pizza.new(105, "Calzone", 9,["mozarella",  "homemade tomato sauce"])
    @dishes_on_menu << Pizza.new(106, "Americana", 10,["mozarella",  "homemade tomato sauce"])
  end

  def add_to_menu(dishes)
    if dishes.kind_of?(Array)
      dishes.each {|dish| @dishes_on_menu << dish}
    else
      @dishes_on_menu  << dishes
    end
  end

  def print_menu
    puts "We have on our menu:"
    puts @dishes_on_menu.map {|value| value.print_details}
  end

  def choose_pizza
    print "Which dish would you like? Pleas enter the order numer: "
    order_number = gets.to_i
    @dishes_on_menu.find {|dish| dish.order_number == order_number}
  end

end
