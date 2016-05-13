class Person 
	#attr_accessor which is read and write only 
	#attr_reader ready only
	#attr_writer write only
	attr_reader :first_name, :last_name, :age, :gender
# 	def initialize(first_name, last_name, age ,gender)
# 		@first_name = first_name
# 		@last_name = last_name
# 		@age = age
# 		@gender = gender
# 	end
# end

	def initialize
		puts '****Create new person****'
		puts 'what is the first name?'
		 @first_name = gets.strip
		puts "whats is the last name"
		 @last_name = gets.strip
		puts "whats your name"
		 @age = gets.strip.to_i
		puts 'Your gender'
		 @gender = gets.strip
	end
end

# patrick = Person.new('Patrick', 'marshall', '25', 'male')
person_1 = Person.new
puts person_1.first_name
puts person_1.last_name
puts person_1.age
puts person_1.gender

# dave = Person.new('Dave', 'Jungst', '35', 'male')
person_2 = Person.new
puts person_2.first_name
puts person_2.last_name
puts person_2.age
puts person_2.gender