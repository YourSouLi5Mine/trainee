class Subject < Application
  print "#{self} load Done. ✅ \n"
  attr_reader :id
  attr_accessor :name, :credits

  def initialize(name = '', credits = 0)
    @name = name
    @credits = credits

    setup
    has_many('class_rooms', ClassRoom)
  end

  def self.credits
    all.reduce(0) { |acc, s| acc + s.credits }
  end

  def teachers
    class_rooms.map(&:teacher)
  end

  def students
    class_rooms.map(&:students).flatten
  end
end
