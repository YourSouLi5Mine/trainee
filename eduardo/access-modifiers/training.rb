class Training
#class variable
  @@training_name = 'Full stack course'
  @@company = 'TangoSource '
#class method
  def self.course_name
    @@training_name
  end

  def self.current_time
    print "#{Time.now}"
  end

  def self.course_information
    print "The #{course_name} is imparted for #{@@company}"
    puts
    print 'The course will take 3 months length and is free'
  end


  attr_reader :teachers, :name, :students, :grades

  def initialize(name, student_capacity)
    @name = name
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h, k| h[k] = [] }
  end

  def hire_teacher(teacher_name)
    @teachers << teacher_name
  end

  def enroll_course(student_name)
    @student_capacity > @students.length ? @students << student_name : false
    print "#{student_name} was added to course successfuly, Current student capacity is #{@student_capacity -= 1}"
  end

  def is_enrolled?(student_name)
    @students.include?(student_name)
  end

  def add_grade(name, grade)
    if is_enrolled?(name)
      @grades[name] << (grade)
      return true
    else
      print "Student #{name}, doesn't belong to current course"
      return false
    end
  end

  def num_grades(name)
    @grades[name].length
  end

  def average_grade(name)
    unless is_enrolled?(name) || num_grades(name).nil?
      nil
    else
      sum = 0
      @grades[name].each { |num| sum += num }
      print "Average grade of #{name} is #{sum / @grades[name].length} "
      sum / @grades[name].length
    end
  end
end
