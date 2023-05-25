class CreateWikiAttributeScrapers < ActiveRecord::Migration[7.0]
  def change
    create_table :wiki_attribute_scrapers do |t|
      t.string :header

      t.timestamps
    end
  end
end
