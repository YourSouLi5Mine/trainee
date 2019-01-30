class Person
  attr_reader :name
  attr_writer :name

  def initialize(name = null)
    @name = name
  end

  def greet
    p "Hello #{@name}"
  end
end
