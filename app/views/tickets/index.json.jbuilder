json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :seat_category, :customer_category, :origin_city, :destiny_city, :price
  json.url ticket_url(ticket, format: :json)
end
