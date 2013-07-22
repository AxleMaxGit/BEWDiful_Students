require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://www.oracle.com/us/solutions/enterprise-architecture/index.html"))   

#get an array of the contents of the <p> tags on the page
p_arr = page.css("p")
#display how many blocks of <p> tags there are to process
puts "The number of <p> elements is #{p_arr.length}"   # => 6

#create a hash to store the number of times each words appears
top_words = {}

#array used to process each word one at a time
parse_arr = Array.new

#step through the array to output the text
i = 0
while i < p_arr.length
	p_len = p_arr[i].text.length
	puts p_len
		#add a control to ignore <p> blocks with less than 10 characters in them
		if p_len > 10

			#display the raw <p> text
			puts "*****"
			puts p_arr[i].text

			#analyse the content of the text to look for commonly appearing words
			str = p_arr[i].text
			
			#put the words of the string into an array for processing
			parse_arr = str.split(" ")
			
			#create a hash with words as keys and # occurrences as value
			#top_words = {}

			parse_arr.each {|x| 
				if top_words.include?(x)
					puts "<<<<< #{x}"
					top_words[x] += 1
				else
					puts "^^^^ #{x}"
					#puts top_words[x]
					top_words[x] = 1
				end
			}
			
			#sort the hash to show highest counts first
			top_words = top_words.sort_by {|k,v| v}.reverse

			#display the running count
			top_words.each {|key, value| puts "#{key} occurs #{value} time\(s\)" }
		end

	i += 1
	
end

#analyse the 