json.extract! rating, :id, :stars, :description, :created_at, :updated_at
json.url rating_url(rating, format: :json)