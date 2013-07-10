class Greeter

	@@class_greeting = "Howdy"

	def initialize(greeting=nil)
		@greeting = greeting || @@class_greeting
	end

	def greet(name)
		"#{@greeting} #{name}"
	end
end

greeter = Greeter.new("Hello")

puts greeter.greet("Ben")
puts greeter.greet("Alex")
puts greeter.greet("Tanya")

greeter2 = Greeter.new("Welcome ")

puts greeter2.greet("Ben")
puts greeter2.greet("Alex")
puts greeter2.greet("Tanya")

greeter3 = Greeter.new
puts greeter3.greet("Alex")
