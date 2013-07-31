json.array!(@blahs) do |blah|
  json.extract! blah, :title
  json.url blah_url(blah, format: :json)
end
