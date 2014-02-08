json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :age, :gender, :address, :email, :mobile, :id_terminal
  json.url employee_url(employee, format: :json)
end
