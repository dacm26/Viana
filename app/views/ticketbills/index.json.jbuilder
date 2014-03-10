json.array!(@ticketbills) do |ticketbill|
  json.extract! ticketbill, :id, :ticket_id, :id_customer, :itinerary_id, :departure_date
  json.url ticketbill_url(ticketbill, format: :json)
end
