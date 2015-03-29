json.array!(@dinners) do |dinner|
  json.extract! dinner, :id, :name, :date
  json.url dinner_url(dinner, format: :json)
end
