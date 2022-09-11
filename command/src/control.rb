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
  #Class that creates a light it also has an attr_reader with the level of light
  class Light

    attr_reader :level
    #Initializer of the class it receives a location and assign level to 0
    def initialize(location)
      @location = location
      @level = 0
    end
    #Assigns level to 100 and prints that the light is on
    def on
      @level = 100
      puts "Light is on"
    end
    #Assigns level to 0 and prints that the light is off
    def off
      @level = 0
      puts "Light is off"
    end
    #Prints the state of level
    def dim(level)
      @level = level
      if level == 0
        off
      else
        puts "Light is dimmed to #{@level}%"
      end
    end

  end
#Class used to assign the high speed to a ceiling fan
class CeilingFanHighCommand
  #Initialized the class by receiving a fan also a variable prev_speed is declared with the current speed of the fan
  def initialize(fan)
    @fan = fan
    @prev_speed = @fan.speed
  end
  #Sets the fan speed to high and the save the previous state in prev_speed variable
  def execute
    @prev_speed = @fan.speed
    @fan.high
  end
  #Uses prev_speed variable to set the speed of the fan as it was before execute button was pushed
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
#Class used to assign the medium speed to a ceiling fan
class CeilingFanMediumCommand
  #Initialized the class by receiving a fan also a variable prev_speed is declared with the current speed of the fan
  def initialize(fan)
    @fan = fan
    @prev_speed = @fan.speed
  end
  #Sets the fan speed to medium and the save the previous state in prev_speed variable
  def execute
    @prev_speed = @fan.speed
    @fan.medium
  end
  #Uses prev_speed variable to set the speed of the fan as it was before execute button was pushed
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
#Class used to turn off a ceiling fan
class CeilingFanOffCommand
  #Initialized the class by receiving a fan also a variable prev_speed is declared with the current speed of the fan
  def initialize(fan)
    @fan = fan
    @prev_speed = @fan.speed
  end
  #Sets the fan speed to high and the save the previous state in prev_speed variable  
  def execute
    @prev_speed = @fan.speed
    @fan.off
  end
  #Uses prev_speed variable to set the speed of the fan as it was before execute button was pushed  
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
  #Class that creates a ceiling fan it also has an attr_reader with the speed of the fan and 4 constants 
  #with the possible states of the fan
  class CeilingFan

    # Access these constants from outside this class as
    # CeilingFan::HIGH, CeilingFan::MEDIUM, and so on.
    HIGH   = 3
    MEDIUM = 2
    LOW    = 1
    OFF    = 0

    attr_reader :speed
    #Initializer of the class it receives a location and assign speed to OFF
    def initialize(location)
      @location = location
      @speed = OFF
    end
    #Assigns fan speed to high and prints it
    def high
      @speed = HIGH
      puts "#{@location} ceiling fan is on high"
    end
    #Assigns fan speed to medium and prints it    
    def medium
      @speed = MEDIUM
      puts "#{@location} ceiling fan is on medium"
    end
    #Assigns fan speed to low and prints it
    def low
      @speed = LOW
      puts "#{@location} ceiling fan is on low"
    end
    #Assigns fan speed to OFF and prints it
    def off
      @speed = OFF
      puts "#{@location} ceiling fan is off"
    end

  end
