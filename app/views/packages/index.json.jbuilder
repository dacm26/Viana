json.array!(@packages) do |package|
  json.extract! package, :id, :weight, :origin_customer, :destiny_customer, :id_itinerary, :price
  json.url package_url(package, format: :json)
end
