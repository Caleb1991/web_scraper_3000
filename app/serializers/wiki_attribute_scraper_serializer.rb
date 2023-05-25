class WikiAttributeScraperSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :header
end