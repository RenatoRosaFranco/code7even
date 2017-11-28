require 'rails_helper'

RSpec.describe "Dashboard::Categories", type: :request do
  describe "GET /dashboard_categories" do
    it "works! (now write some real specs)" do
      get dashboard_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
