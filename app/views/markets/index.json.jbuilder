json.array!(@markets) do |market|
  json.extract! market, :id, :name, :address
  json.url market_url(market, format: :json)
end
