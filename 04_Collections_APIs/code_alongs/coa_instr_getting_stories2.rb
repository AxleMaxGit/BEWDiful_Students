# Get a feed of the stories from reddit and print them to STDOUT

#REQUIREMENTS
#get json from reddit
#parse json into a ruby hash
#print stories to the terminal

require "httpi"
require "json"


#get json from reddit feed
def get_reddit_feed
	request = HTTPI::Request.new
	request.url = "http://www.reddit.com/.json"
	HTTPI.get(request).body
end

def parse_reddit_feed(raw_response)
	JSON.parse(raw_response)
end


def print_stories (stories)
	stories.each do |story| 
		print_story(story["data"])
	end
end

def print_story(story)
	puts "Source: Reddit"
	puts "Title: #{story["title"]}"
	puts "Category: #{story["subreddit"]}"
	puts "Votes: #{story["score"]}"
	puts "\n"
end

raw_response = get_reddit_feed
response = parse_reddit_feed(raw_response)
print_stories(response["data"]["children"])


#mashable/stories.json
def get_mashable_feed
	request = HTTPI::Request.new
	request.url = "http://mashable.com/stories.json"
	HTTPI.get(request).body
end

def parse_mashable_feed(raw_response)
	JSON.parse(raw_response)
end


def print_stories (stories)
	stories.each do |story| 
		print_story(story)
		
	end
end

def print_story(story)
	#puts story["title"]
	puts "Source: Mashable"
	puts "Title: #{story["title"]}"
	puts "Category: #{story["channel"]}"
	puts "Votes: #{story["shares"]["total"]}"
	puts "\n"
end

raw_response = get_mashable_feed
response = parse_mashable_feed(raw_response)
print_stories(response["new"])

#www.digg.com/api/news/.json
def get_digg_feed
	request = HTTPI::Request.new
	request.url = "http://www.digg.com/api/news/popular.json"
	HTTPI.get(request).body
end

def parse_digg_feed(raw_response)
	JSON.parse(raw_response)
end

def print_stories (stories)
	stories.each do |story| 
		print_story(story)
	end
end

def print_story(story)
	puts "Source: Digg"
	puts "Title: #{story["content"]["title"]}"
	puts "Category: #{story["content"]["tags"].first["display"]}"
	puts "Votes: #{story["digg_score"]}"
	puts "\n"
end

raw_response = get_digg_feed
response = parse_digg_feed(raw_response)
print_stories(response["data"]["feed"])

#jsonviewer.stack.hu





