json.array!(@users) do |user|
  json.extract! user, :id, :name, :department, :password_salt, :password_hash, :remark, :created_by, :updated_by
  json.url user_url(user, format: :json)
end
