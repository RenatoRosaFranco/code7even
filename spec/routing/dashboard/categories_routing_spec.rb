require "rails_helper"

RSpec.describe Dashboard::CategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/categories").to route_to("dashboard/categories#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/categories/new").to route_to("dashboard/categories#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/categories/1").to route_to("dashboard/categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/categories/1/edit").to route_to("dashboard/categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/categories").to route_to("dashboard/categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashboard/categories/1").to route_to("dashboard/categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashboard/categories/1").to route_to("dashboard/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/categories/1").to route_to("dashboard/categories#destroy", :id => "1")
    end

  end
end
