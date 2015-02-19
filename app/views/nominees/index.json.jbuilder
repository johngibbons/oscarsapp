json.array!(@nominees) do |nominee|
  json.extract! nominee, :id
  json.url nominee_url(nominee, format: :json)
end
