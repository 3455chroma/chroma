json.extract! user, :id, :name, :password, :imagename, :imagetype, :imagedate, :account, :created_at, :updated_at
json.url user_url(user, format: :json)
