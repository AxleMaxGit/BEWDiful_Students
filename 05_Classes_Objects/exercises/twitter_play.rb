#the first line in this file should be 
#$LOADPATH.unshift(filename(__FILE__))

# don't put all of the code in the runfile
# use 'require' to get class from another file
# can use gems
#classes should have single responsibilities for things they take care of
#e.g. class for api, class to display output, class to prompt user

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'tweetstream'
puts 'loaded'

TweetStream.configure do |config|
  config.consumer_key       = 'eEEC7Gzj31wqMkfKfkTt2A'
  config.consumer_secret    = 'p1Vm3EbvLfYMmjNIU7OJUCKWu8rYJTlt1tU3ggQETU'
  config.oauth_token        = '362954988-rZ48L7RTa90pjmsD009HvJ6msax2BkCgckWbnKfh'
  config.oauth_token_secret = '8NsVnh8jifppYl03u5f4mH4wx4ECebwIfNb2C2cvw'
  config.auth_method        = :oauth
end

puts 'auth'
user_id = 'banehut'

EM.run do

  client = TweetStream::Client.new

puts client.methods.sort

  client.on_error do |error|
    puts error
  end

  client.sitestream([user_id], :followings => true) do |status|
    puts status.inspect
  end


end




# This will pull a sample of all tweets based on
# your Twitter account's Streaming API role.
# TweetStream::Client.new.sample do |status|
#   # The status object is a special Hash with
#   # method access to its keys.
#   puts "#{status.text}"
# end

# g = TweetStream::Client.new
# puts g.sample('test')

#authenticate with the twitter app
# TweetStream.configure do |config|
#   config.consumer_key = "eEEC7Gzj31wqMkfKfkTt2A"
#   config.consumer_secret = "p1Vm3EbvLfYMmjNIU7OJUCKWu8rYJTlt1tU3ggQETU"
#   config.oauth_token = "362954988-rZ48L7RTa90pjmsD009HvJ6msax2BkCgckWbnKfh"
#   config.oauth_token_secret = "8NsVnh8jifppYl03u5f4mH4wx4ECebwIfNb2C2cvw"
#   config.auth_method = :oauth
# end #oauth block

# # client.userstream do |status|
# #   puts status.text
# # end

# client = TweetStream::Client.new
# # puts @client.methods.sort
# # @client.on_anything do |status|
# # 	puts status
# #   # do something with the status
# # end








# client.sample do |status|
#   # The status object is a special Hash with
#   # method access to its keys.
#   puts "#{status.text}"
# end

# tmeth = Twitter.user.name

# puts tmeth


# #get a twitter handle to pull the timeline from
# puts "Enter you twitter handle"
# tname = gets.chomp


# #call the ValidHandle Class from external file
# vh = ValidHandle.new(tname)

# #Validation: remove leading at symbols
# puts vh.rem_leading_at

# #get the timeline from the user
# timeline = Twitter.user_timeline(tname)

# puts "@#{tname} there are #{timeline.length} tweets in your timeline"
# puts "How many of your tweets do you want to see?"
# treturn = gets.chomp.to_i

# #validate the response in a sensible number
# if treturn < 1 || treturn > timeline.length
# 	puts "Epic fail!!! Your guess was not legit"
# else
# 	count = 0
# 	while count < treturn
# 		puts timeline[count].text
# 		puts "\n"
# 		count += 1
# 	end #while
# end #if




