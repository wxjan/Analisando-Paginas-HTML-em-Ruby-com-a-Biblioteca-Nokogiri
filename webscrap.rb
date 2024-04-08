
require 'nokogiri'
require 'net/http'

uri = URI('https://example.com')
response = Net::HTTP.get_response(uri)

doc = Nokogiri::HTML(response.body)
paragraph_content = doc.at('p').text

puts paragraph_content