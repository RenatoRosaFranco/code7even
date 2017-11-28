json.extract! dashboard_member, :id, :avatar, :name, :description, :occupation, :facebook, :twitter, :linkedin, :created_at, :updated_at
json.url dashboard_member_url(dashboard_member, format: :json)
