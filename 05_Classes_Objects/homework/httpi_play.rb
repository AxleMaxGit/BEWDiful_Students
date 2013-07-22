require "httpi"
require "json"


#get json from reddit feed
def get_body_from_uri
	request = HTTPI::Request.new
	request.url = "https://en.wikipedia.org/wiki/Enterprise_architecture"
	HTTPI.get(request).body
end

# 

s = get_body_from_uri

puts s.slice(s.index("<p>")..s.index("</p>"))

puts "!!!!!!!!!!!!!!!"


s = s.sub("<p>", "LLLL")

#t = t.slice(t.index("<p>")..t.index("</p>"))

puts s.slice(s.index("<p>")..s.index("</p>"))

puts "!!!!!!!!!!!!!!!"



# r = s.slice(s.index("<p>")..s.index("</p>"))

# puts r

#puts result.gsub!(/.*?(?=body)/, "") #=> "@how's it going?"
#puts result
# str = "Hey what's up @dude, @how's it going?"
# str.gsub!(/.*?(?=@how)/im, "") #=> "@how's it going?"


