$:.unshift File.dirname(__FILE__) + '/../lib'

require 'rubygems'
require 'google-search'
require 'json'


def parse_reddit_feed(raw_response)
	JSON.parse(raw_response)
end


#get an array with search results
@search = Google::Search::Web.new :query => 'Enterprise Architecture'
  
#extract the results hash  
main_hash = @search.get_hash

#drill down to the results array
results_arr = main_hash['responseData']['results']

for current_iteration_number in 1..100 do
   puts results_arr[current_iteration_number]['content']
   puts "\n\n"
end


#puts content_array = main_hash['responseData']['results'][0]['content']
# num_results = main_hash['responseData']['results'].length

# while num_results > 0
# 	puts content_array['content'][num_results]
# 	num_results -= 1
# end	



