# Dynamic Typing
#
# Variables are checked in runtime instead of compiled time (static typing)
# Variables types can be altered in runtime

class DynamicShowdown
  def initialize(dynamic_variable)
    @dynamic_variable = dynamic_variable
  end

  def change_to_str()
    @dynamic_variable = "Now I'm a str!!"
  end

  def change_to_bool()
    @dynamic_variable = true
  end

  def change_to_num()
    @dynamic_variable = Math::PI 
  end

  def print_variable()
    puts @dynamic_variable
  end
end

showing_dynamism = DynamicShowdown.new(nil)
showing_dynamism.print_variable
showing_dynamism.change_to_str
showing_dynamism.print_variable
showing_dynamism.change_to_bool
showing_dynamism.print_variable
showing_dynamism.change_to_num
showing_dynamism.print_variable
