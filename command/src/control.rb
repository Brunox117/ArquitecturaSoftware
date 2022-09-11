# Command Pattern
# Date: 10-Sept-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla
#          A01748559 Roberto Castro Barrios
# File name: control.rb
#The source code in this file implements the command pattern as a remote controller
#Class that simulates a remote controller
class RemoteControlWithUndo
    #Initializes the class with two arrays and assigns to both of them 7 no commands objects 
    #also creates a variable called undo_command assigned to no_command
    def initialize
      @on_commands = []
      @off_commands = []
      no_command = NoCommand.new
      7.times do
        @on_commands << no_command
        @off_commands << no_command
      end
      @undo_command = no_command
    end
    #Assigns an on_command and an off_command passed thorugh a slot that also is received 
    def set_command(slot, on_command, off_command)
      @on_commands[slot] = on_command
      @off_commands[slot] = off_command
    end
    #receives an index that is used in on_commands array and calls the execute function in that object
    #also assigns that object to undo_command 
    def on_button_was_pushed(slot)
      @on_commands[slot].execute
      @undo_command = @on_commands[slot]
    end
    #receives an index that is used in off_commands array and calls the execute function in that object
    #also assigns that object to undo_command 
    def off_button_was_pushed(slot)
      @off_commands[slot].execute
      @undo_command = @off_commands[slot]
    end
    #executes the undo function on the object assigned to the undo_command variable
    def undo_button_was_pushed()
      @undo_command.undo
    end
    #prints all the slots with its assigned buttons
    def inspect
      string_buff = ["\n------ Remote Control -------\n"]
      @on_commands.zip(@off_commands) \
          .each_with_index do |commands, i|
        on_command, off_command = commands
        string_buff << \
        "[slot #{i}] #{on_command.class}  " \
          "#{off_command.class}\n"
      end
      string_buff << "[undo] #{@undo_command.class}\n"
      string_buff.join
    end

end
  #Class used as a dummy it does nothing but saves steps in the implementation
  class NoCommand
  #Does nothing
  def execute
  end
  #Does nothing
  def undo
  end

  end
#Class used by the remote controller to turn the light on
class LightOnCommand
    #Receives an object light
    def initialize(light_on)
      @light = light_on
    end
    #Executes on function in the light received in the initializer
    def execute
      @light.on
    end
    #Executes off function in the light received in the initializer
    def undo
      @light.off
    end
end
#Class used by the remote controller to turn the light off
class LightOffCommand
  #Receives an object light
  def initialize(light_off)
    @light_off = light_off
  end
  #Executes off function in the light received in the initializer
  def execute
    @light_off.off
  end
  #Executes on function in the light received in the initializer
  def undo
    @light_off.on
  end
end
  class Light

    attr_reader :level

    def initialize(location)
      @location = location
      @level = 0
    end

    def on
      @level = 100
      puts "Light is on"
    end

    def off
      @level = 0
      puts "Light is off"
    end

    def dim(level)
      @level = level
      if level == 0
        off
      else
        puts "Light is dimmed to #{@level}%"
      end
    end

  end
class CeilingFanHighCommand
  def initialize(fan)
    @fan = fan
    @prev_speed = @fan.speed
  end
  def execute
    @prev_speed = @fan.speed
    @fan.high
  end
  def undo
    if @prev_speed == CeilingFan::HIGH
      @fan.high
    else
    if @prev_speed == CeilingFan::MEDIUM
      @fan.medium
    else
    if @prev_speed == CeilingFan::LOW
      @fan.low
    else
    if @prev_speed == CeilingFan::OFF
      @fan.off
    end
    end
    end
    end
  end
end
class CeilingFanMediumCommand
  def initialize(fan)
    @fan = fan
    @prev_speed = @fan.speed
  end
  def execute
    @prev_speed = @fan.speed
    @fan.medium
  end
  def undo
    if @prev_speed == CeilingFan::HIGH
      @fan.high
    else
    if @prev_speed == CeilingFan::MEDIUM
      @fan.medium
    else
    if @prev_speed == CeilingFan::LOW
      @fan.low
    else
    if @prev_speed == CeilingFan::OFF
      @fan.off
    end
    end
    end
    end
  end
end
class CeilingFanOffCommand
  def initialize(fan)
    @fan = fan
    @prev_speed = @fan.speed
  end
  def execute
    @prev_speed = @fan.speed
    @fan.off
  end
  def undo
  if @prev_speed == CeilingFan::HIGH
      @fan.high
  else
    if @prev_speed == CeilingFan::MEDIUM
      @fan.medium
    else
    if @prev_speed == CeilingFan::LOW
      @fan.low
    else
    if @prev_speed == CeilingFan::OFF
      @fan.off
    end
    end
    end
  end
  end
end
  class CeilingFan

    # Access these constants from outside this class as
    # CeilingFan::HIGH, CeilingFan::MEDIUM, and so on.
    HIGH   = 3
    MEDIUM = 2
    LOW    = 1
    OFF    = 0

    attr_reader :speed

    def initialize(location)
      @location = location
      @speed = OFF
    end

    def high
      @speed = HIGH
      puts "#{@location} ceiling fan is on high"
    end

    def medium
      @speed = MEDIUM
      puts "#{@location} ceiling fan is on medium"
    end

    def low
      @speed = LOW
      puts "#{@location} ceiling fan is on low"
    end

    def off
      @speed = OFF
      puts "#{@location} ceiling fan is off"
    end

  end
