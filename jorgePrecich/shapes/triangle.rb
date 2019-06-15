require_relative 'side_size.rb'

class Triangle 
  puts 'Triangle loaded!'

  include SideSize
  
  attr_accessor :all_sides

  def initialize
    @sides = 3
    @edges = 3
    @all_sides = []
  end

  def side
    puts "Triangle: #{@sides}"
  end

  def edge
    puts @edges
  end
end

