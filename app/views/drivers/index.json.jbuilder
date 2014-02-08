json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :age, :gender, :address, :email, :mobile, :salary,:id_bus
  json.url driver_url(driver, format: :json)
end
