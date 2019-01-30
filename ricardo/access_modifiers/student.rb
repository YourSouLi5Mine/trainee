class Student < Application
  attr_reader :id
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age

    setup
    has_many('class_room_students', ClassRoomStudent)
  end

  def class_rooms
    class_room_students.map(&:class_room)
  end

  def subjects
    class_rooms.map(&:subject)
  end

  def teachers
    class_room_students.map(&:teacher)
  end

  def info
    { name: @name, school: $school[:name] }
  end

end
