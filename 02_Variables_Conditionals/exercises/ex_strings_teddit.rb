# Add to Teddit!
# We want users to be able to add stories from the command line

# Deliver this experience:
# 	Welcome the user to Teddit.
# 	Prompt for a story title.
# 	Wait for user input (bonus: Don't use gets.chomps)
# 	Ask the user to give the story a category. 
# 	Wait for a response. 
# 	Show the new story the user added.
# 	Look for repetition and add methods to keep code DRY. 

# Here is an example of what you should see in the terminal when you finish coding.
# 	Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"
# 	Please enter a news story:
# 	=> ***Waits for input*** 
# 	User enters: Bear feels remorse for stealing candy from baby
# 	Please give it a category:
# 	=> ***Waits for input***
# 	User enters: ecological
# 	New story added! Bear feels remorse for stealing candy from baby, Category: Ecological, Current Upvotes: 1

def get_input
	gets.chomp	
end

def method_name
	
end

puts "Welcome to Teddit"
puts "Give me a story title please"
StoryTitle = get_input
puts "what category is this story in?"
StoryCat = get_input
puts "You added a story called \"#{StoryTitle}\", it is in the #{StoryCat} category"


