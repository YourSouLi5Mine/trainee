require_relative './application.rb'
require 'active_support'

autoload :ClassRoomStudent, './class_room_student'
autoload :ClassRoom, './class_room'
autoload :Subject, './subject'
autoload :Student, './student'
autoload :Teacher, './teacher'

$school = {
  name: 'TangoSource Trainee Program Institute (TTPI)'
}

memo = Teacher.new('Guillermo', 10)
omaury = Teacher.new('Omaury', 10)

p Teacher.all

Subject.new('Git', 2)
Subject.new('Vim', 4)
Subject.new('Ruby', 5)
Subject.new('Rails', 5)
Subject.new('JavaScript', 3)

p Subject.all
p "Total credits of subjects #{Subject.credits}"

rb_class = ClassRoom.new('Ruby ClassRoom', Subject.all[2], memo)
vim_class = ClassRoom.new('Vim ClassRoom', Subject.all[1], omaury)
rails_class = ClassRoom.new('Rails ClassRoom', Subject.all[3], memo)

ricardo = Student.new('Ricardo', 23)
jorge = Student.new('Jorge', 24)
eduardo = Student.new('Eduardo', 23)

ClassRoomStudent.new(rb_class, ricardo)
ClassRoomStudent.new(vim_class, ricardo)
ClassRoomStudent.new(rails_class, ricardo)
ClassRoomStudent.new(rails_class, jorge)
ClassRoomStudent.new(rails_class, eduardo)

p 'Ricardos ClassRooms', ricardo.class_rooms

