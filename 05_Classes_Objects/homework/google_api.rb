$:.unshift File.dirname(__FILE__) + '/../lib'

require 'rubygems'
require 'google-search'
require 'json'



@search = Google::Search::Web.new :query => 'Enterprise Architecture'
  
#puts @search.methods.sort

puts @search.get_hash
