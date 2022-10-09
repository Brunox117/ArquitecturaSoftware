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
    #Returns results for the winning cases
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

    #Returns results for the losing cases 
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
    #Return the result.
    def res
        return "Rock"
    end
end
#Create a rock object to use it in the test. 
Rock = Rock.new
#The class paper shows the winning and losing cases of itself in the game, overrides Jankenpon.
class Paper < Jankenpon
     #Returns results for the winning cases
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

    #Returns results for the losing cases
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
#Create a paper object to use it in the test.
Paper = Paper.new
#The class scissors shows the winning and losing cases of itself in the game, overrides Jankenpon.
class Scissors < Jankenpon
     #Returns results for the winning cases
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
    #Returns results for the losing cases
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
#Create a scissors object to use it in the test.
Scissors = Scissors.new
#The class Lizard shows the winning and losing cases of itself in the game, overrides Jankenpon.
class Lizard < Jankenpon
     #Returns results for the winning cases
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
    #Returns results for the losing cases
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
#Create a lizard object to use it in the test.
Lizard = Lizard.new
#The class spock shows the winning and losing cases of itself in the game, overrides Jankenpon.
class Spock < Jankenpon
     #Returns results for the winning cases
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
    #Returns results for the losing cases
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
#Create a spock object to use it in the test.
Spock = Spock.new
#Prints the result
def show other
    puts "Result = " + other.res
end

