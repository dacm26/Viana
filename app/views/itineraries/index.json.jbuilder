json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :id, :departure_time, :arrival_time, :id_bus
  json.url itinerary_url(itinerary, format: :json)
end
