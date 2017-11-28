require "rails_helper"

RSpec.describe Dashboard::NewslettersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/newsletters").to route_to("dashboard/newsletters#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/newsletters/new").to route_to("dashboard/newsletters#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/newsletters/1").to route_to("dashboard/newsletters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/newsletters/1/edit").to route_to("dashboard/newsletters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/newsletters").to route_to("dashboard/newsletters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashboard/newsletters/1").to route_to("dashboard/newsletters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashboard/newsletters/1").to route_to("dashboard/newsletters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/newsletters/1").to route_to("dashboard/newsletters#destroy", :id => "1")
    end

  end
end
