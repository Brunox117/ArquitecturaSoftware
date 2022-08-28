# Observer Method Pattern
# Date: 06-Mar-2022
# Authors:
#          A01376398 Oscar Macias
#          A01748632 Michel Dionne

# File name: twitter.rb


class Twitter
  attr_reader :name
  attr_reader :mytweet, :observers
  
# the initializer of the clase which needs the name to create it
 def initialize(name)
   @name = name
   @observers = []
   @tweet = ""
  end
  
#This functions lets the user tweet something (puts)
#and also notifies everyone subscribed(following) the person
  def tweet(new_tweet)
    @mytweet = new_tweet
    notify_followers()
  end

#lets a person follow or observe another acount
 def follow(user)
    user.observers << self
    self
  end

#function to let all observers and update them when the account tweeted
  def notify_followers()
    @observers.each do |follower|
        follower.update(self)
    end
  end

#The uodate aplied to the observers, in this case is a messaje
def update(sender)
   puts("#{self.name} received a tweet from #{sender.name}: #{sender.mytweet}")
 end
end