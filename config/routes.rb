Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/wiki_attribute_scrapers/search' => 'wiki_attribute_scrapers#search'
    end
  end
end
