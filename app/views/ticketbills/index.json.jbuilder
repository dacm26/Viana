json.array!(@ticketbills) do |ticketbill|
  json.extract! ticketbill, :id, :id_ticket, :id_customer, :id_employee, :itinerary_id, :departure_date
  json.url ticketbill_url(ticketbill, format: :json)
end
