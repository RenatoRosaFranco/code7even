json.extract! dashboard_user, :id, :avatar, :name, :email, :password, :password_confirmation, :created_at, :updated_at
json.url dashboard_user_url(dashboard_user, format: :json)
