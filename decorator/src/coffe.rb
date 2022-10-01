# Decorator Pattern
# Date: 03-Oct-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla
#          A01748559 Roberto Castro Barrios
# File: coffe.rb
#Class of the DarkRoast coffe it implements an attr_accesor with the cost
#and description of the coffe type
class DarkRoast
     attr_accessor :cost, :description
    #The initializer of the class sets the price and the description
    def initialize
        @cost = 0.99
        @description = 'Dark Roast Coffee'
    end
    #Returns the cost of the coffee
    def cost
        @cost
    end
    #Returns the description of the coffee
    def description
        @description
    end
end
#Class of the Espresso coffe it implements an attr_accesor with the cost
#and description of the coffe type
class Espresso
    attr_accessor :cost, :description
    #The initializer of the class sets the price and the description
    def initialize
        @cost = 1.99
        @description = 'Espresso'
    end
    #Returns the cost of the coffee
    def cost
        @cost
    end
    #Returns the description of the coffee
    def description
        @description
    end

end
#Class of the HouseBlend coffe it implements an attr_accesor with the cost
#and description of the coffe type
class HouseBlend
    attr_accessor :cost, :description
    #The initializer of the class sets the price and the description
    def initialize
        @cost = 0.89
        @description = 'House Blend Coffee'
    end
    #Returns the cost of the coffee
    def cost
        @cost
    end
    #Returns the description of the coffee
    def description
        @description
    end
end
# Class of the Milk condiment
class Milk
    # The initializer of the class requires a beverage(coffe) object
    def initialize(beverage)
        @beverage = beverage
    end
    # Returns the cost of the condimente and the cost of the beverage
    def cost
        @beverage.cost + 0.10
    end
    # Returns the description of the beverage and adds the description of the condiment
    def description
        @beverage.description + ', Milk'
    end
end
# Class of the Whip condiment
class Whip
    # The initializer of the class requires a beverage(coffe) object
    def initialize(beverage)
        @beverage = beverage
    end
    # Returns the cost of the condimente and the cost of the beverage
    def cost
        @beverage.cost + 0.10
    end
    # Returns the description of the beverage and adds the description of the condiment
    def description
        @beverage.description + ', Whip'
    end
end
# Class of the Soy condiment
class Soy
    # The initializer of the class requires a beverage(coffe) object
    def initialize(beverage)
        @beverage = beverage
    end
    # Returns the cost of the condimente and the cost of the beverage
    def cost
        @beverage.cost + 0.15
    end
    # Returns the description of the beverage and adds the description of the condiment
    def description
        @beverage.description + ', Soy'
    end
end
# Class of the Mocha condiment
class Mocha
    # The initializer of the class requires a beverage(coffe) object
    def initialize(beverage)
        @beverage = beverage
    end
    # Returns the cost of the condimente and the cost of the beverage
    def cost
        @beverage.cost + 0.20
    end
    # Returns the description of the beverage and adds the description of the condiment
    def description
        @beverage.description + ', Mocha'
    end
end
