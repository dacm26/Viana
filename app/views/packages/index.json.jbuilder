json.array!(@packages) do |package|
  json.extract! package, :id, :weight, :origin_customer, :destiny_customer, :origin_city, :destiny_city, :price
  json.url package_url(package, format: :json)
end
