#base class

class Mammal
	attr_accessor :gender, :name, :age, :alive
	def initialize(gender, name, age, alive = true)	# required first, optional last -- optional parameters such as the boolean value have to come after the required parameters such as shown
		@gender = gender
		@name = name
		@age = age
		@alive = alive
	end
	
	def speak
		raise 'You must implement this in a sub class'
	end

	def increment_age(age = 1)
		@age += age
	end

	def kill
		@alive = false if @alive
	end

	def self.type_of_blood
		puts 'Mammals are warm blooded'
	end
end

#sub classes are evrything below as they are the sub class of the Mammal class
class Human < Mammal
	def initialize(gender, name, age, alive)
		super(gender, name, age, alive)
		@hair_color = hair_color
	end	
	def speak
		puts 'this is english...'
	end
end

class Elephant < Mammal(gender, name, age, alive)
	def initialize
		super(gender, name, age, alive)
	end	
		def speak
			puts 'trumpeting...'
		end
end

class Cat < Mammal(gender, name, age, alive)
	def initialize
		super(gender, name, age, alive)
		@fur_color = fur_color
	end
	def speak
		puts 'meow...'
	end
end
#sub classes ends here

jake = Human.new('Male', 'Jake', 26, true)
jake.speak
jax = Cat.new ('Male','Jax', 2, true)
jax.speak
dumbo = Elephant.new ('Male', 'Dumbo', 3)
dumbo.speak