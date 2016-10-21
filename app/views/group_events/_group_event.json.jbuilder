json.extract! group_event, :id, :user_id, :starts, :duration, :name, :description, :location, :created_at, :updated_at
json.url group_event_url(group_event, format: :json)
