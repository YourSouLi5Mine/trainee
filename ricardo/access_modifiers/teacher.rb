class Teacher < Application
  attr_reader :id
  attr_accessor :name, :yaers_of_experience, :class_rooms

  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience

    setup
    has_many('class_rooms', ClassRoom)
  end

  def experience
    p "#{@name} has #{@years_of_experience} years of experience."
  end
end

