# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(
<<<<<<< HEAD



bottles_at_start = 99
bob = "bottles of beer"

while bottles_at_start > 0

	puts "#{bottles_at_start} #{bob} on the wall"
	puts "#{bottles_at_start} #{bob}"
	puts "take one down and pass it around"

	if bottles_at_start > 1
		puts (bottles_at_start-1).to_s + " #{bob} on the wall\n\n"
	end	
	bottles_at_start -= 1

end

puts "No more bottles of beer on the wall :-(\n\n"

=======
>>>>>>> teacher/master
