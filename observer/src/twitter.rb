# Observer Pattern
# Date: 28-Aug-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla
#          A01748559 Roberto Castro Barrios
# File name: twitter.rb

#The source code in this file implements the observer pattern as a 'twitter'
#class also three variables are declared as attributes readers
class Twitter
  attr_reader :name, :usrtweet, :observers

# The constructor of the class it receives a name and creates an empty string
#called tweet and an empty array of observers
 def initialize(name)
   @name = name
   @observers = []
   @tweet = ""
  end

#This function assigns the new tweet to the variable usrtweet and also calls the
#notify subscribers function
  def tweet(new_tweet)
    @usrtweet = new_tweet
    notify_subscribers()
  end

#'subscribes' itself to the user passed as a parameter
 def follow(user)
    user.observers << self
    self
  end

#This function notifys all of the observers of the user every time a new tweet
#is generated
  def notify_subscribers()
    @observers.each do |sub|
        sub.update(self)
    end
  end

#This function notifies the user when a person that he/she is following
#'posts' a new tweet
def update(sender)
   puts("#{self.name} received a tweet from #{sender.name}: #{sender.usrtweet}")
 end
end
