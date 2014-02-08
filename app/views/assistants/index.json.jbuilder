json.array!(@assistants) do |assistant|
  json.extract! assistant, :id, :name, :age, :gender, :address, :email, :mobile, :salary,:id_bus
  json.url assistant_url(assistant, format: :json)
end
