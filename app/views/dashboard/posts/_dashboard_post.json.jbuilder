json.extract! dashboard_post, :id, :title, :description, :content, :published, :tags, :created_at, :updated_at
json.url dashboard_post_url(dashboard_post, format: :json)
