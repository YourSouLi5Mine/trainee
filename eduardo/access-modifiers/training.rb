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
    if @student_capacity > @students.length
      @students << student_name 
      print "#{student_name} was added successfully"
    else
      print 'Course if already full'
    end
  end

  def is_enrolled?(student_name)
    @students.include?(student_name)
  end

  def add_grade(name, grade)
    is_enrolled?(name) ? @grades[name] << (grade) : "Student #{name}, doesn't belong to current course"
  end

  def num_grades(name)
    @grades[name].length
  end

  def average_grade(name)
    unless is_enrolled?(name) || num_grades(name).nil?
      nil
    else
      sum = @grades[name].reduce(0) { |acc, num| acc + num }
      average = sum / @grades[name].length
      print "Average grade of #{name} is #{average}"
      average
    end
  end
end
