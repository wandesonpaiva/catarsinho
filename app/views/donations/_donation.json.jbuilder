json.extract! donation, :id, :project_id, :user_id, :value, :created_at, :updated_at
json.url donation_url(donation, format: :json)
