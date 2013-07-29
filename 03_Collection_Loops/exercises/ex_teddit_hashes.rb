<<<<<<< HEAD

=======
>>>>>>> teacher/master
# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
<<<<<<< HEAD
#
#If the Story is about cats multiply the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.


def get_input
	gets.chomp	
end

def multiply_votes (story_title, story_cat, votes)
	count = votes.to_i
	if story_title.include?("cats") || story_cat == "cats"
		count *= 5
	end

	if story_title.include?("bacon") || story_cat == "bacon"
		count *= 8
	end

	if story_title.include?("food") || story_cat == "food"
		count *= 3
	end

	if count == votes
		return count
	end	

	return count
	
end	


puts "Welcome to Teddit"

stories = []
q = 0
chkbit = 0

#This is a nominal number of records to go in the array
while chkbit == 0

	stories[q] = {}

	puts "Give me a story title please"
	story_title = get_input
	stories[q][:title] = story_title

	puts "what category is this story in?"
	story_cat = get_input
	stories[q][:cat] = story_cat

	puts "How many votes do you award?"
	votes = get_input
	stories[q][:votes] = votes

	puts "Would you like to add another story? Enter 'y' or 'n'"
	another = get_input
	if another == "n"
		puts "N"
		chkbit += 1
	end
	q += 1
end

puts "Your votes were: "
puts stories


stories.each_index {|x| 	
					story_title = stories[x][:title]
					story_cat = stories[x][:cat]
					votes = stories[x][:votes] 
					puts "You added a story called \"#{story_title}\", it is in the #{story_cat} category"
					puts "This story got #{multiply_votes("#{story_title}", "#{story_cat}", votes)} votes"
				}


=======
#
>>>>>>> teacher/master
