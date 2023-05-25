require './app/poros/wiki_attribute_scraper'

RSpec.describe 'WikiAttributeScraper' do 
  context 'object initialization' do
    before :each do
      @wiki_scraper = WikiAttributeScraper.new("Lego")
    end
    it 'exists' do
      expect(@wiki_scraper).to be_an_instance_of(WikiAttributeScraper)
    end

    it 'stores the header' do
      expect(@wiki_scraper.header).to eq('Lego')
    end
  end
end