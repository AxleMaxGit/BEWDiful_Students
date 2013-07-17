require "httpi"
require "json"


#get json from reddit feed
def get_body_from_uri
	request = HTTPI::Request.new
	request.url = "https://en.wikipedia.org/wiki/Enterprise_architecture"
	HTTPI.get(request).body
end

# 

puts get_body_from_uri