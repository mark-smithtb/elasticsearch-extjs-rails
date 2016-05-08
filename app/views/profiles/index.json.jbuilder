json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :description, :address, :city, :state, :zipcode
  json.url profile_url(profile, format: :json)
end
