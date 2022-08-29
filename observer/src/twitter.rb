# Observer Pattern
# Date: 28-Aug-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla
#          A01748559 Roberto Castro Barrios
# File name: twitter.rb

#The source code in this file implements the observer pattern as a 'twitter'
#class also three variables are declared as attributes readers
class Twitter
  attr_reader :name
  attr_reader :mytweet, :observers

# The constructor of the class it receives a name and creates an empty string
#called tweet and an empty array of observers
 def initialize(name)
   @name = name
   @observers = []
   @tweet = ""
  end

#This function assigns the new tweet to the variable mytweet and also calls the
#notify followers function
  def tweet(new_tweet)
    @mytweet = new_tweet
    notify_followers()
  end

#'subscribes' itself to the user passed as a parameter
 def follow(user)
    user.observers << self
    self
  end

#This function notifys all of the observers of the user every time a new tweet
#is generated
  def notify_followers()
    @observers.each do |follower|
        follower.update(self)
    end
  end

#This function notifies the user when a person that he/she is following
#'posts' a new tweet
def update(sender)
   puts("#{self.name} received a tweet from #{sender.name}: #{sender.mytweet}")
 end
end
