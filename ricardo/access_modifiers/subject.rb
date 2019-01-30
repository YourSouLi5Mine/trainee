class Subject < Application
  attr_reader :id
  attr_accessor :name, :credits

  def initialize(name = '', credits = 0)
    @name = name
    @credits = credits

    setup
    has_many('class_room', ClassRoom)
  end

  def self.credits
    all.reduce(0) { |acc, s| acc + s.credits }
  end
end
