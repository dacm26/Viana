json.array!(@voyages) do |voyage|
  json.extract! voyage, :id, :v_date, :id_itinerary, :seats, :id_bus
  json.url voyage_url(voyage, format: :json)
end
