json.array!(@buses) do |bus|
  json.extract! bus, :id, :plate, :capacity
  json.url bus_url(bus, format: :json)
end
