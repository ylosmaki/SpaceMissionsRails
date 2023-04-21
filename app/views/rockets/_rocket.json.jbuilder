json.extract! rocket, :id, :name, :mission_id, :first_launch, :created_at, :updated_at
json.url rocket_url(rocket, format: :json)
