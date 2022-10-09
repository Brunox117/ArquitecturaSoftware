# Domain-Specific-Language Pattern
# Date: 07-Oct-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla 
#          A01748559 Roberto Castro Barrios 
# File: jankenpon.rb
#The Jankenpon file shows an implementation of the dsl pattern
# Abstract class of jankenpon.
class Jankenpon
    # Abstract method
    def + rpsls
    end
    # Abstract method
    def - rpsls
    end
end
#The class rock shows the winning and losing cases of itself in the game, overrides Jankenpon.
class Rock < Jankenpon
    #AQUI ME QUEDE-------------------------------------------------------------------------------------
    def + rpsls
        if(rpsls == Scissors)
            puts "Rock crushes Scissors (winner Rock)"
            return self
        elsif (rpsls == Lizard)
            puts "Rock crushes Lizard (winner Rock)"
            return self
        elsif (rpsls == Rock)
            puts "Rock tie (winner Rock)"
            return self
        else
            return rpsls + self
        end
    end

    # Return the losing play
    def - rpsls
        if(rpsls == Spock)
            puts "Spock vaporizes Rock (loser Rock)"
            return self
        elsif (rpsls == Paper)
            puts "Paper covers Rock (loser Rock)"
            return self
        elsif (rpsls == Rock)
            puts "Rock tie (loser Rock)"
            return rpsls
        else
            return rpsls - self
        end
    end
    # Return the result.
    def res
        return "Rock"
    end
end
#Asigning the Constant Rock to a new Rock class.
Rock = Rock.new
# Specific implementation of Paper in the DSL.
class Paper < Jankenpon
    # Returns the winning play
    def + rpsls
        if(rpsls == Spock)
            puts "Paper disproves Spock (winner Paper)"
            return self
        elsif (rpsls == Rock)
            puts "Paper covers Rock (winner Paper)"
            return self
        elsif (rpsls == Paper)
            puts "Paper tie (winner Paper)"
            return rpsls
        else
            return rpsls + self
        end
    end

    # Return the losing play
    def - rpsls
        if(rpsls == Lizard)
            puts "Lizard eats Paper (loser Paper)"
            return self
        elsif (rpsls == Scissors)
            puts "Scissors cut Paper (loser Paper)"
            return self
        elsif (rpsls == Paper)
            puts "Paper tie (loser Paper)"
            return self
        else
            return rpsls - self
        end
    end
    # Return the result.
    def res
        return "Paper"
    end
end
#Asigning the Constant Paper to a new Paper class.
Paper = Paper.new


# Specific implementation of Scissors in the DSL.
class Scissors < Jankenpon
    # Returns the winning play
    def + rpsls
        if(rpsls == Paper)
            puts "Scissors cut Paper (winner Scissors)"
            return self
        elsif (rpsls == Lizard)
            puts "Scissors decapitate Lizard (winner Scissors)"
            return self
        elsif (rpsls == Scissors)
            puts "Scissors tie (winner Scissors)"
            return rpsls
        else
            return rpsls + self
        end
    end

    # Return the losing play
    def - rpsls
        if(rpsls == Rock)
            puts "Rock crushes Scissors (loser Scissors)"
            return self
        elsif (rpsls == Spock)
            puts "Spock smashes Scissors (loser Scissors)"
            return self
        elsif (rpsls == Scissors)
            puts "Scissors tie (loser Scissors)"
            return rpsls
        else
            return rpsls - self
        end
    end
    # Return the result.
    def res
        return "Scissors"
    end

end
#Asigning the Constant Scissors to a new Scissor class.
Scissors = Scissors.new
# Specific implementation of Lizard in the DSL.
class Lizard < Jankenpon
    # Returns the winning play
    def + rpsls
        if(rpsls == Spock)
            puts "Lizard poisons Spock (winner Lizard)"
            return self
        elsif (rpsls == Paper)
            puts "Lizard eats Paper (winner Lizard)"
            return self
        elsif (rpsls == Lizard)
            puts "Lizard tie (winner Lizard)"
            return self
        else
            return rpsls + self
        end
    end
    # Return the losing play
    def - rpsls
        if(rpsls == Rock)
            puts "Rock crushes Lizard (loser Lizard)"
            return self
        elsif (rpsls == Scissors)
            puts "Scissors decapitate Lizard (loser Lizard)"
            return self
        elsif (rpsls == Lizard)
            puts "Lizard tie (loser Lizard)"
            return self
        else
            return rpsls - self
        end
    end
    # Return the result.
    def res
        return "Lizard"
    end
end
#Asigning the Constant Lizard to a new Lizard class.
Lizard = Lizard.new
# Specific implementation of Spock in the DSL.
class Spock < Jankenpon
    # Returns the winning play
    def + rpsls
        if(rpsls == Scissors)
            puts "Spock smashes Scissors (winner Spock)"
            return self
        elsif (rpsls == Rock)
            puts "Spock vaporizes Rock (winner Spock)"
            return self
        elsif (rpsls == Spock)
            puts "Spock tie (winner Spock)"
            return self
        else
            return rpsls + self
        end
    end
    # Return the losing play
    def - rpsls
        if(rpsls == Paper)
            puts "Paper disproves Spock (loser Spock)"
            return self
        elsif (rpsls == Lizard)
            puts "Lizard poisons Spock (loser Spock)"
            return self
        elsif (rpsls == Spock)
            puts "Spock tie (loser Spock)"
            return self
        else
            return rpsls - self
        end
    end

    # Return the result.
    def res
        return "Spock"
    end
end
#Asigning the Constant Spock to a new Spock class.
Spock = Spock.new
# This method outputs the re
def show other
    puts "Result = " + other.res
end

