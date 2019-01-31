class ClassRoom < Application
  print "#{self} load Done. ✅ \n"
  attr_reader :id
  attr_accessor :name, :teacher_id, :subject_id

  def initialize(name, subject, teacher)
    @name = name
    @subject_id = subject.is_a?(Subject) ? subject.id : subject
    @teacher_id = teacher.is_a?(Teacher) ? teacher.id : teacher

    setup
    belongs_to('teacher', Teacher, @teacher_id)
    belongs_to('subject', Subject, @subject_id)

    has_many('class_room_students', ClassRoomStudent)
  end

  def students
    class_room_students.map(&:student)
  end
end
