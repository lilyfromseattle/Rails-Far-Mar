json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :vendor_name, :market_name, :product
  json.url vendor_url(vendor, format: :json)
end
