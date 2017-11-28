require 'rails_helper'

RSpec.describe "Dashboard::Partners", type: :request do
  describe "GET /dashboard_partners" do
    it "works! (now write some real specs)" do
      get dashboard_partners_path
      expect(response).to have_http_status(200)
    end
  end
end
