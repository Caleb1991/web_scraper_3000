class Api::V1::WikiAttributeScrapersController < ApplicationController
  def search
    search_results = WikiAttributeScraper.new('Lego')
    render json: WikiAttributeScraperSerializer.new(search_results)
  end
end