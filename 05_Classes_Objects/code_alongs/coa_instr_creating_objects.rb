#Why use Objects


# #These are 3 hashes that have the same fields and share a similar behavior
<<<<<<< HEAD
# jimmy = {}
# jimmy[:name] = "Jimmy Mazzy"
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmy[:grade]= "A"
# # 
# pepe = {}
# pepe[:name]= "Pepe Phaenagrotis"
# pepe[:major] = "Music"
# pepe[:course] = "Math"
# pepe[:grade] = "C"
# # 
# edward = {}
# edward[:name] = "Edward Ellis"
# edward[:major] = "Math"
# edward[:course] = "Math"
# edward[:grade] = "C"
# # 
# def grade_status(student)
#   if student[:grade] == "F"
#     "failed"
#   elsif student[:major] == student[:course] && student[:grade] >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end

# puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
# puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
# puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"
=======
jimmy = {}
jimmy[:name] = "Jimmy Mazzy"
jimmy[:major] = "Math"
jimmy[:course] = "Math"
jimmy[:grade]= "A"
# 
pepe = {}
pepe[:name]= "Pepe Phaenagrotis"
pepe[:major] = "Music"
pepe[:course] = "Math"
pepe[:grade] = "C"
# 
edward = {}
edward[:name] = "Edward Ellis"
edward[:major] = "Math"
edward[:course] = "Math"
edward[:grade] = "C"
# 
def grade_status(student)
  if student[:grade] == "F"
    "failed"
  elsif student[:major] == student[:course] && student[:grade] >= "C"
    "failed"
  else
    "passed"
  end
end

puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"
>>>>>>> teacher/master


# 1. Refactor to use a class (don't use an initialiser, add getters and setters manually, leave the grade_status method out of the class)

<<<<<<< HEAD
# puts "Version 1"

# class Student
# 	def name=(val)
# 		@name = val
# 	end

# 	def name
# 		@name
# 	end

# 	def major=(val)
# 		@major = val
# 	end

# 	def major
# 		@major
# 	end

# 	def course=(val)
# 		@course = val
# 	end

# 	def course
# 		@course
# 	end

# 	def grade=(val)
# 		@grade = val
# 	end

# 	def grade
# 		@grade
# 	end
# end

# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.major = "BEWD"
# jimmy.course = "BEWD"
# jimmy.grade = "A"


# def grade_status(student)
#   if student.grade == "F"
#     "failed"
#   elsif student.major == student.course && student.grade >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end

# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"


# 2. Use attr_reader, and attr_writer

# puts "Version 2"

# class Student

# 	#shortcut for typing out the setters by hand
# 	attr_writer :name, :major, :course, :grade

# 	#shortcut for getters
# 	attr_reader  :name, :major, :course, :grade

# end

# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.major = "BEWD"
# jimmy.course = "BEWD"
# jimmy.grade = "A"


# def grade_status(student)
#   if student.grade == "F"
#     "failed"
#   elsif student.major == student.course && student.grade >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end

# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"

# 3. User attr_accessor

# puts "Version 3"

# class Student

# 	#shortcut for tmaking the getters & setters 
# 	attr_accessor :name, :major, :course, :grade

# end

# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.major = "BEWD"
# jimmy.course = "BEWD"
# jimmy.grade = "A"


# def grade_status(student)
#   if student.grade == "F"
#     "failed"
#   elsif student.major == student.course && student.grade >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end

# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"

# 4. Move the method in to the class

# puts "Version 4"

# class Student

# 	#shortcut for tmaking the getters & setters 
# 	attr_accessor :name, :major, :course, :grade

# 	def grade_status
# 		  if self.grade == "F"
# 		    "failed"
# 		  elsif self.major == self.course && self.grade >= "C"
# 		    "failed"
# 		  else
# 		    "passed"
# 		  end
# 	end
# end

# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.major = "BEWD"
# jimmy.course = "BEWD"
# jimmy.grade = "A"




# puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"

# 5. Add an initialize and to_s method

# puts "Version 5"

# class Student

# 	#shortcut for tmaking the getters & setters 
# 	attr_accessor :name, :major, :course, :grade

# 	def initialize(name)
# 		@name = name
# 	end

# 	def to_s
# 		@name
# 	end

# 	def grade_status
# 		  if self.grade == "F"
# 		    "failed"
# 		  elsif self.major == self.course && self.grade >= "C"
# 		    "failed"
# 		  else
# 		    "passed"
# 		  end
# 	end
# end

# jimmy = Student.new("Jimmy Mazzy")
# jimmy.major = "BEWD"
# jimmy.course = "BEWD"
# jimmy.grade = "A"

# # puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"

# # ---

# puts "Version 6"

# class Student

# 	#shortcut for tmaking the getters & setters 
# 	attr_accessor :name, :major, :course, :grade

# 	def initialize(name, major, course, grade)
# 		@name = name
# 		@major = major
# 		@course = course
# 		@grade = grade
# 	end

# 	def to_s
# 		@name
# 	end

# 	def grade_status
# 		  if self.grade == "F"
# 		    "failed"
# 		  elsif self.major == self.course && self.grade >= "C"
# 		    "failed"
# 		  else
# 		    "passed"
# 		  end
# 	end
# end

# jimmy = Student.new("Jimmy Mazzy", "BEWD", "BEWD", "A")


# puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"

# puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"

# ---

puts "Version 7"

class Student

	#shortcut for tmaking the getters & setters 
	attr_accessor :name, :major, :course, :grade

	def initialize(attributes={})
		@name = attributes[:name]
		@major = attributes[major]
		@course = attributes[:course]
		@grade = attributes[:grade]
	end

	def to_s
		@name
	end

	def grade_status
		  if self.grade == "F"
		    "failed"
		  elsif self.major == self.course && self.grade >= "C"
		    "failed"
		  else
		    "passed"
		  end
	end
end

jimmy = Student.new(:name => "Jimmy Mazzy", :major => "BEWD", :course => "BEWD", :grade => "A")


puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"
=======
# 2. Use attr_reader, and attr_writer

# 3. User attr_accessor

# 4. Move the method in to the class

# 5. Add an initialize and to_s method
>>>>>>> teacher/master
