require 'active_support'

path = File.expand_path File.dirname(__FILE__)

autoload :Shape, "#{path}/shape"
autoload :Square, "#{path}/square"
autoload :Triangle, "#{path}/triangle"
autoload :Rectangle, "#{path}/rectangle"
autoload :Circle, "#{path}/circle"

shape = Shape.new
triangle = Triangle.new
square = Square.new
rectangle = Rectangle.new
circle = Circle.new

shape.side(square)
shape.side(triangle)
shape.edge(rectangle)
shape.edge(circle)

square.size
