json.array!(@cateogries) do |cateogry|
  json.extract! cateogry, :id, :label
  json.url cateogry_url(cateogry, format: :json)
end
