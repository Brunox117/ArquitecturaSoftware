# Adapter pattern
# Date: 24-Sept-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla 
#          A01748559 Roberto Castro Barrios 
# File: simple_queue.rb

# IMPORTANT: Do not modify the following class in any way!

class SimpleQueue

  def initialize
    @info =[]
  end

  def insert(x)
    @info.push(x)
    self
  end

  def remove
    if empty?
      raise "Can't remove if queue is empty"
    else
      @info.shift
    end
  end

  def empty?
    @info.empty?
  end

  def size
    @info.size
  end

  def inspect
    @info.inspect
  end

end
