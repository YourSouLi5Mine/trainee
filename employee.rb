class Employee
	
	attr_reader :name, :title
	attr_writer :earnings

	def initialize(name, title)
		@name = name
		@title = title
		@earnings = 0
	end
	
	def pay(amount)
		@earnings += amount
		"Payment #{amount} was successful current earnings is #{@earnings}"
	end

        def work(time)
          puts time        
	end

        def code
          puts 'this employee codes'
        end
end
