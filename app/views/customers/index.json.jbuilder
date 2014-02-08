json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :age, :gender, :address, :email, :mobile
  json.url customer_url(customer, format: :json)
end
