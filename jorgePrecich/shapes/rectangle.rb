class Rectangle
  puts 'Rectangle loaded!'

  def initialize
    @sides = 4
    @edges = 4
  end

  def side
    puts "Rectangle: #{@sides}"
  end

  def edge
    puts @edges
  end
end

