class ClassRoomStudent < Application
  attr_reader :id
  attr_accessor :class_room_id, :student_id
  def initialize(class_room, student)
    @class_room_id = class_room.is_a?(ClassRoom) ? class_room.id : class_room
    @student_id = student.is_a?(Student) ? student.id : student

    setup
    belongs_to('class_room', ClassRoom, @class_room_id)
    belongs_to('student', Student, @student_id)
  end
end
