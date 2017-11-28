require 'rails_helper'

RSpec.describe "Dashboard::Services", type: :request do
  describe "GET /dashboard_services" do
    it "works! (now write some real specs)" do
      get dashboard_services_path
      expect(response).to have_http_status(200)
    end
  end
end
