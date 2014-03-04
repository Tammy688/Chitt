json.array!(@chittles) do |chittle|
  json.extract! chittle, :id, :chit_text
  json.url chittle_url(chittle, format: :json)
end
