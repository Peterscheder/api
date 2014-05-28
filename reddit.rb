require 'rest-client'
require 'json'

puts "Hello, whould you like to find out what categoray way_fairer posts most on reddit?"

input = gets.strip 


while true

	puts "Loading results..."

	response = RestClient.get("http://reddit.com/users/way_fairer.json")

	parsed_response = JSON.parse(response)

	posts = parsed_response["results"]

	posts.each_with_index do |category, link_title|
		puts "#{index+1}. #{posts["title"]}"

	end

	puts "Would you like to see more? (y or n)"

	input = gets.strip.downcase

	break if (input == "n" || input == "no")
end