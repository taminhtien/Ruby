class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    # *orders --> array
    # Hash: .keys --> get key
    # Hash: .values --> get values
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) { |cost, key| cost + @menu[key]*order[key] }
    end
  end
end

menu = Hash[:rice, 3, :noodles, 2]
orders1 = Hash[:rice, 1, :noodles, 1]
orders2 = Hash[:rice, 2, :noodles, 2]
p Restaurant.new(menu).cost(orders1, orders2)