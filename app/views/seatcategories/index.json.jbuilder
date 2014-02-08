json.array!(@seatcategories) do |seatcategory|
  json.extract! seatcategory, :id, :name
  json.url seatcategory_url(seatcategory, format: :json)
end
