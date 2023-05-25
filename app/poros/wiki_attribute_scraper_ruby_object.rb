require 'httparty'
require 'nokogiri'
require 'csv'
require 'open-uri'

class WikiAttributeScraperRubyObject
  attr_reader :url,
              :header

  def initialize(url)
    @html = Nokogiri::HTML(URI.open("https://en.wikipedia.org/wiki/" + url))
    @header = @html.css('h1').text
  end
end