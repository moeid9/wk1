#As a customer
#So that I can check if I want to order something
#I would like to see a list of dishes with prices.

class Menu
  
  def initialize
    @menu = []
  end
  def show_menu
    @items = {
      "Hamburger" => '£5', 
      "Cheese Burger" => '£6',
      "Veggie Burger" => '£6',
      "Vegan Burger" => '£7',
      "Sweet Potatoe Fries" => '£5',
      "Salad" => '£3',
      "Iced Tea" => '£5',
      "Lemonade" => '£3'
    }
    
    @items.each do |item , v|
      @menu << item.to_s + ': ' + v.to_s
    end
    return @menu.join('\n')
  end
end

#As a customer
#So that I can order the meal I want
#I would like to be able to select some number of several available dishes.
