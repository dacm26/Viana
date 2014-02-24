json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :id, :departure_time, :arrival_time
  json.url itinerary_url(itinerary, format: :json)
end
