json.extract! pet, :id, :name, :organization_id, :description, :age, :status, :created_at, :updated_at
json.url pet_url(pet, format: :json)
