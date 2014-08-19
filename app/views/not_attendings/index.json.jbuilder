json.array!(@not_attendings) do |not_attending|
  json.extract! not_attending, :id, :first_name, :last_name, :email
  json.url not_attending_url(not_attending, format: :json)
end
