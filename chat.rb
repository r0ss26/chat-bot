require 'uri'
require 'httparty'
  
puts "What would you like to talk about?"

while true
  query = gets.chomp

  response = HTTParty.get("http://api.wolframalpha.com/v1/conversation.jsp?appid=#{ENV["APPID"]}&i=#{URI::encode(query)}")
  puts response["result"]
end