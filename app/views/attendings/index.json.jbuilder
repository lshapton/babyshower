json.array!(@attendings) do |attending|
  json.extract! attending, :id, :first_name, :last_name, :email
  json.url attending_url(attending, format: :json)
end
