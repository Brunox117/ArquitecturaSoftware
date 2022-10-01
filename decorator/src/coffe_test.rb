# Decorator Pattern
# Date: 03-Oct-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla 
#          A01748559 Roberto Castro Barrios
# File: coffee_test.rb
require 'minitest/autorun'
require 'coffee'
# Class that tests the coffe file 
class CoffeeTest < Minitest::Test
  # Test the espresso class
  def test_espresso
    beverage = Espresso.new
    assert_equal("Espresso", beverage.description)
    assert_equal(1.99, beverage.cost)
  end
  # Test the dark roast class and the milk mocha and whip classes
  def test_dark_roast
    beverage = DarkRoast.new
    beverage = Milk.new(beverage)
    beverage = Mocha.new(beverage)
    beverage = Mocha.new(beverage)
    beverage = Whip.new(beverage)
    assert_equal("Dark Roast Coffee, Milk, Mocha, Mocha, Whip",
                 beverage.description)
    assert_equal(1.59, beverage.cost)
  end
  # Test the house blend class and the soy mocha and whip classes
  def test_house_blend
    beverage = HouseBlend.new
    beverage = Soy.new(beverage)
    beverage = Mocha.new(beverage)
    beverage = Whip.new(beverage)
    assert_equal("House Blend Coffee, Soy, Mocha, Whip",
                 beverage.description)
    assert_equal(1.34, beverage.cost)
  end

end
