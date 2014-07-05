json.array!(@distribution_centers) do |distribution_center|
  json.extract! distribution_center, :id, :name, :address
  json.url distribution_center_url(distribution_center, format: :json)
end
