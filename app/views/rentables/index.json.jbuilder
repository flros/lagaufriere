json.array!(@rentables) do |rentable|
  json.extract! rentable, :id, :latitude, :longitude, :address, :description, :title, :price, picture,
  json.url rentable_url(rentable, format: :json)
end
