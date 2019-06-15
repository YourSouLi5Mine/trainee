require_relative 'side_size.rb'

class Square
  puts 'Square loaded!'

  include SideSize

  attr_accessor :all_sides

  def initialize
    @sides = 4
    @edges = 4
    @all_sides = []
  end

  def side
    puts "Square: #{@sides}"
  end

  def edge
    puts @edges
  end
end

