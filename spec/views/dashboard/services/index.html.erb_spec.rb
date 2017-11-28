require 'rails_helper'

RSpec.describe "dashboard/services/index", type: :view do
  before(:each) do
    assign(:dashboard_services, [
      Dashboard::Service.create!(
        :name => "Name",
        :description => "Description",
        :tags => "Tags"
      ),
      Dashboard::Service.create!(
        :name => "Name",
        :description => "Description",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of dashboard/services" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
