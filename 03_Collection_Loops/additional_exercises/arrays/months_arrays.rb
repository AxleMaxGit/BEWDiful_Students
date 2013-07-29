################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Arrays 
# Learning Objective: Introduce array syntax.
# Note: This is a cumulative example. 
#
################################################################################


# 1. Create an array that stores three different months ("January, February, March").

# 2. Add two more months to your array in a single expression ("April May").

# 3. Convert your name to an array, and display it, in a single expression

# 4. Remove and display the last value in the months array.
# Was April and May removed why or why not.
<<<<<<< HEAD

#create array
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September"]

#puts months.methods

#concatenate array items for display
puts months.join
puts months.join(", ")
puts "\n"

#show array size
puts months.length

#show 4 letter tiems in array
puts months.select { |n| n.length == 4 } 
puts "\n"

#add item to end of array
months << "November"
months.push("December")
puts months 
puts "\n"

#insert a value at an index position
months.insert(9, "October")

#add item to front of array 
months.unshift("new first month")
puts months 
puts "\n"

#drop item from front of aray
months.shift
puts months
puts "\n"

#delete at index position
months.delete_at(2)
puts months 
puts "\n"

#delete string
months.delete("April")

#drop item from end of array
months.pop
puts months 
puts "\n"

#show 5 items starting at index 1
puts months[1..5]
#show item at index 3
puts months.at(3)
#show first & last items
puts months.first
puts months.last
puts "\n"
#show items from index 2 onward
puts months.drop(2)
#show the first n items
puts months.take(2)
#does array contain May?
puts months.include?("May")

months.each { |a| puts a + "OOO" }

#non-destructive .uniq and destructive uniq!

#<arrayname>.pop = remove the last item in the array (returns the pop'd value)

#<arrayname>.push = appends the item to the end of the array (returns the pushed value)

#<arrayname>.shift removes first item in array and returns removed item

#<arrayname>.unshift adds item to start of array 
=======
>>>>>>> teacher/master
