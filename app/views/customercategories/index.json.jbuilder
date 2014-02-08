json.array!(@customercategories) do |customercategory|
  json.extract! customercategory, :id, :name
  json.url customercategory_url(customercategory, format: :json)
end
