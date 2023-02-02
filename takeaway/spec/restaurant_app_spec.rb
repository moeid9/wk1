require 'restaurant_app'

describe 'Menu' do

  it "returns menu with prices" do
    menu = Menu.new
    expect(menu.show_menu()).to eq 'Hamburger: £5\\nCheese Burger: £6\\nVeggie Burger: £6\\nVegan Burger: £7\\nSweet Potatoe Fries: £5\\nSalad: £3\\nIced Tea: £5\\nLemonade: £3'
# "Hamburger : 10\nCheese burger"
  end
end