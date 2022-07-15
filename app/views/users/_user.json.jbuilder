json.extract! user, :id, :name, :surname, :position, :unit, :service, :created_at, :updated_at
json.url user_url(user, format: :json)
