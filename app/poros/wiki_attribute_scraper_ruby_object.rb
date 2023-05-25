require 'httparty'
require 'nokogiri'
require 'csv'
require 'open-uri'

class WikiAttributeScraperRubyObject
  attr_reader :url,
              :header,
              :model_id

  def initialize(url)
    @html = Nokogiri::HTML(URI.open("https://en.wikipedia.org/wiki/" + url))
    @header = @html.css('h1').text
    @model_id = model.id
  end

  def model
    WikiAttributeScraper.find_or_create_by!(header: @header)
  end
end