json.extract! dashboard_newsletter, :id, :name, :email, :status, :created_at, :updated_at
json.url dashboard_newsletter_url(dashboard_newsletter, format: :json)
