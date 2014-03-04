json.array!(@chatters) do |chatter|
  json.extract! chatter, :id, :chit_response
  json.url chatter_url(chatter, format: :json)
end
