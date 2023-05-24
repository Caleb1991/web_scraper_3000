require 'pry'
# require 'open-uri'
# require 'net/http'

# url = "https://en.wikipedia.org/wiki/Spy_%C3%97_Family"

# uri = URI.parse(url)

# response = Net::HTTP.get_response(uri)

# html = response.body

# puts html

# Not dynamic........ yet!

require 'httparty'
require 'nokogiri'
require 'csv'

response = HTTParty.get("https://en.wikipedia.org/wiki/Spy_%C3%97_Family")

html = response.body

doc = Nokogiri::HTML(html)

description = doc.css('p').text

picture = doc.css('img').find { |pic| pic.attributes['alt'].value.include?('Spy Family vol 1.jpg') }

data_arr = []

data_arr.push(description, picture)

CSV.open('app/data.csv', "w") do |csv|
  csv << data_arr
end