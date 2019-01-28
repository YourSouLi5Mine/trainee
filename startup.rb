class Startup

  attr_reader :salaries, :name, :funding, :employees
  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
     if salaries.has_key?(title)
      return true
     else
      return false
     end
  end

  def >(other_startup)
     if self.funding > other_startup.funding
      return true
     else
      return false
     end
  end

  def hire(name, title)
    raise 'Title doesnt exist' unless valid_title?(title)
    @employees.push(Employee.new(name, title)) if valid_title?(title)
  end

  def size
    @employees.size
  end

  def pay_employee(employee)
    raise 'Not enough founds to pay' if @salaries[employee.title] > @funding
    if @funding >= @salaries[employee.title]
      employee.pay(@salaries[employee.title])
      @funding -= @salaries[employee.title]
    end
  end

  def payday
    @employees.each do |emp|
      pay_employee(emp)
    end
  end

  def average_salary
    sum = 0
    @employees.each do |emp|
      sum += @salaries[emp.title]
    end
    sum / @employees.length
  end

  def close
    @employees = 0
    @funding = 0
  end

  def acquire(other_startup)
    @employees + other_startup.employees
  end
end