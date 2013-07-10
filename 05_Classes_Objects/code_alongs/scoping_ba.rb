class Greeter
  GlobalGreeting = "Howdy"

  def self.global_greeting
    GlobalGreeting
  end


  def initialize(greeting=nil)
    @greeting = greeting || GlobalGreeting
  end
  
  
  def greet(name)
    "#{@greeting} #{name}"
  end
end

greeter = Greeter.new

# puts greeter.greet("Ben")
# puts greeter.greet("Tanya")
# puts greeter.greet("Kerem")

puts Greeter.global_greeting
# puts Greeter.greet
greeter.global_greeting