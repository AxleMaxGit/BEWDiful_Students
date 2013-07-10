#the first line in this file should be 
#$LOADPATH.unshift(filename(__FILE__))

# don't put all of the code in the runfile
# use 'require' to get class from another file
# can use gems
#classes should have single responsibilities for things they take care of
#e.g. class for api, class to display output, class to prompt user

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require "twitter"
require "valid_handle"

#authenticate with the twitter app
Twitter.configure do |config|
  config.consumer_key = "eEEC7Gzj31wqMkfKfkTt2A"
  config.consumer_secret = "p1Vm3EbvLfYMmjNIU7OJUCKWu8rYJTlt1tU3ggQETU"
  config.oauth_token = "362954988-rZ48L7RTa90pjmsD009HvJ6msax2BkCgckWbnKfh"
  config.oauth_token_secret = "8NsVnh8jifppYl03u5f4mH4wx4ECebwIfNb2C2cvw"
end

#get a twitter handle to pull the timeline from
puts "Enter you twitter handle"
tname = gets.chomp


#call the ValidHandle Class from external file
vh = ValidHandle.new(tname)

#Validation: remove leading at symbols
puts vh.rem_leading_at

#get the timeline from the user
timeline = Twitter.user_timeline(tname)


puts "@#{tname} there are #{timeline.length} tweets in your timeline"
puts "How many of your tweets do you want to see?"
treturn = gets.chomp.to_i

#validate the response in a sensible number
if treturn < 1 || treturn > timeline.length
	puts "Epic fail!!! Your guess was not legit"
else
	count = 0
	while count < treturn
		puts timeline[count].text
		puts "\n"
		count += 1
	end
end






