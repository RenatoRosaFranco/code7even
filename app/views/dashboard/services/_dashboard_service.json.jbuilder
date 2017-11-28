json.extract! dashboard_service, :id, :name, :description, :tags, :created_at, :updated_at
json.url dashboard_service_url(dashboard_service, format: :json)
