json.extract! user, :id, :username, :password_digest, :admin_comments, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
