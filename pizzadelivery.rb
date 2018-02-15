require_relative "menu.rb"
require_relative "order.rb"

pizzadeliver_menu = Menu.new
order = Order.new

puts "Hello, welcom to our pizza express delivery service"

while true
  puts "What can I do for you?"
  puts "1) Order Pizza"
  puts "2) Nothing"
  puts "------------------------------"
  option = gets.to_i
  if option == 1
    pizzadeliver_menu.print_menu
    ordered_pizza = pizzadeliver_menu.choose_pizza
    order.add_dish(ordered_pizza)
  else
    puts "Please press either 1 or leave, thx!"
  end
end
