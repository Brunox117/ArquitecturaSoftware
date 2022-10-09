# File: jankenpon.rb
# Abstract class of jankenpon to provide a common interface.
class Jankenpon
    # Abstract, overridable method
    def + next_play
    end
    
    # Abstract, overridable method
    def - next_play
    end
end


# Specific implementation of Rock in the DSL.
class Rock < Jankenpon
    # Returns the winning play
    def + next_play
        if(next_play == Scissors)
            puts "Rock crushes Scissors (winner Rock)"
            return self
        elsif (next_play == Lizard)
            puts "Rock crushes Lizard (winner Rock)"
            return self
        elsif (next_play == Rock)
            puts "Rock tie (winner Rock)"
            return self
        else 
            return next_play + self
        end
    end
    
    # Return the losing play
    def - next_play
        if(next_play == Spock)
            puts "Spock vaporizes Rock (loser Rock)"
            return self
        elsif (next_play == Paper)
            puts "Paper covers Rock (loser Rock)"
            return self
        elsif (next_play == Rock)
            puts "Rock tie (loser Rock)"
            return next_play
        else 
            return next_play - self
        end
    end
    
    # Return the result.
    def res
        return "Rock"
    end
end 

# Specific implementation of Paper in the DSL.
class Paper < Jankenpon
    # Returns the winning play
    def + next_play
        if(next_play == Spock)
            puts "Paper disproves Spock (winner Paper)"
            return self
        elsif (next_play == Rock)
            puts "Paper covers Rock (winner Paper)"
            return self
        elsif (next_play == Paper)
            puts "Paper tie (winner Paper)"
            return next_play
        else 
            return next_play + self
        end
    end
    
    # Return the losing play
    def - next_play
        if(next_play == Lizard)
            puts "Lizard eats Paper (loser Paper)"
            return self
        elsif (next_play == Scissors)
            puts "Scissors cut Paper (loser Paper)"
            return self
        elsif (next_play == Paper)
            puts "Paper tie (loser Paper)"
            return self
        else 
            return next_play - self
        end
    end
    # Return the result.
    def res
        return "Paper"
    end
end 

# Specific implementation of Scissors in the DSL.
class Scissors < Jankenpon
    # Returns the winning play
    def + next_play
        if(next_play == Paper)
            puts "Scissors cut Paper (winner Scissors)"
            return self
        elsif (next_play == Lizard)
            puts "Scissors decapitate Lizard (winner Scissors)"
            return self
        elsif (next_play == Scissors)
            puts "Scissors tie (winner Scissors)"
            return next_play
        else 
            return next_play + self
        end
    end
    
    # Return the losing play
    def - next_play
        if(next_play == Rock)
            puts "Rock crushes Scissors (loser Scissors)"
            return self
        elsif (next_play == Spock)
            puts "Spock smashes Scissors (loser Scissors)"
            return self
        elsif (next_play == Scissors)
            puts "Scissors tie (loser Scissors)"
            return next_play
        else
            return next_play - self
        end
    end
    # Return the result.
    def res
        return "Scissors"
    end
    
end 

# Specific implementation of Lizard in the DSL.
class Lizard < Jankenpon
    # Returns the winning play
    def + next_play
        if(next_play == Spock)
            puts "Lizard poisons Spock (winner Lizard)"
            return self
        elsif (next_play == Paper)
            puts "Lizard eats Paper (winner Lizard)"
            return self
        elsif (next_play == Lizard)
            puts "Lizard tie (winner Lizard)"
            return self
         else 
            return next_play + self
        end
    end

    # Return the losing play
    def - next_play
        if(next_play == Rock)
            puts "Rock crushes Lizard (loser Lizard)"
            return self
        elsif (next_play == Scissors)
            puts "Scissors decapitate Lizard (loser Lizard)"
            return self
        elsif (next_play == Lizard)
            puts "Lizard tie (loser Lizard)"
            return self
         else 
            return next_play - self
        end
    end
    # Return the result.
    def res
        return "Lizard"
    end
end 

# Specific implementation of Spock in the DSL.
class Spock < Jankenpon
    # Returns the winning play
    def + next_play
        if(next_play == Scissors)
            puts "Spock smashes Scissors (winner Spock)"
            return self
        elsif (next_play == Rock)
            puts "Spock vaporizes Rock (winner Spock)"
            return self
        elsif (next_play == Spock)
            puts "Spock tie (winner Spock)"
            return self
        else 
            return next_play + self
        end
    end
    
    # Return the losing play
    def - next_play
        if(next_play == Paper)
            puts "Paper disproves Spock (loser Spock)"
            return self
        elsif (next_play == Lizard)
            puts "Lizard poisons Spock (loser Spock)"
            return self
        elsif (next_play == Spock)
            puts "Spock tie (loser Spock)"
            return self
        else
            return next_play - self
        end
    end
    
    # Return the result.
    def res
        return "Spock"
    end
end 

# This method outputs the re
def show other
    puts "Result = " + other.res 
end

#Asigning the Constant Rock to a new Rock class.
Rock = Rock.new
#Asigning the Constant Paper to a new Paper class.
Paper = Paper.new
#Asigning the Constant Scissors to a new Scissor class.
Scissors = Scissors.new
#Asigning the Constant Lizard to a new Lizard class.
Lizard = Lizard.new
#Asigning the Constant Spock to a new Spock class.
Spock = Spock.new
