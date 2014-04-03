json.array!(@users) do |user|
  json.extract! user, :userid, :username, :firstname, :lastname, :userprofile, :isactive, :remarks
  json.url user_url(user, format: :json)
end
