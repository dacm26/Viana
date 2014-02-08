json.array!(@buses) do |bus|
  json.extract! bus, :id, :name, :capacity, :origin_city, :destiny_city
  json.url bus_url(bus, format: :json)
end
