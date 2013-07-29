# Get a feed of the stories from reddit and print them to STDOUT

<<<<<<< HEAD
<<<<<<< HEAD
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




=======
=======
>>>>>>> teacher/master
require 'httpi'
require 'json'

def get_feed(url)
  request = HTTPI::Request.new
  request.url = url
  HTTPI.get(request).body
end

def parse_feed(url)
  JSON.parse get_feed(url)
end

def normalize_reddit_feed
  response = parse_feed "http://www.reddit.com/.json"
  response["data"]["children"].map do |story|
    {
      :source   => "Reddit",
      :title    => story["data"]["title"],
      :category => story["data"]["subreddit"],
      :votes    => story["data"]["score"]
    }
  end
end

def normalize_mashable_feed
  response = parse_feed "http://mashable.com/stories.json"
  response["new"].map do |story|
    {
      :source   => "Mashable",
      :title    => story["title"],
      :category => story["channel"],
      :votes    => story["shares"]["twitter"]
    }
  end
end

def normalize_digg_feed
  response = parse_feed "http://digg.com/api/news/popular.json"
  response["data"]["feed"].map do |story|
    {
      :source   => "Digg",
      :title    => story["content"]["title"],
      :category => story["content"]["tags"].first["display"],
      :votes    => story["digg_score"]
    }
  end
end

def print_stories(stories)
  stories.each do |story|
    print_story(story)
  end  
end

def print_story(story)
  puts "Source: #{story[:source]}"
  puts "Title: #{story[:title]}"
  puts "Category: #{story[:category]}"
  puts "Votes: #{story[:votes]}"
  puts
end



print_stories normalize_reddit_feed
print_stories normalize_mashable_feed
print_stories normalize_digg_feed
<<<<<<< HEAD
>>>>>>> teacher/master
=======
>>>>>>> teacher/master

