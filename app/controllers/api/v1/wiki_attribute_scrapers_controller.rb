class Api::V1::WikiAttributeScrapersController < ApplicationController
  def search
    poro = WikiAttributeScraperRubyObject.new(params[:keyword])
    model = WikiAttributeScraper.find(poro.model_id)
    render json: WikiAttributeScraperSerializer.new(model)
  end
end