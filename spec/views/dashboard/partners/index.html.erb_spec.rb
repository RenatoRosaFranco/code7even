require 'rails_helper'

RSpec.describe "dashboard/partners/index", type: :view do
  before(:each) do
    assign(:dashboard_partners, [
      Dashboard::Partner.create!(
        :logo => "Logo",
        :name => "Name",
        :description => "MyText",
        :link => "Link",
        :tags => "Tags"
      ),
      Dashboard::Partner.create!(
        :logo => "Logo",
        :name => "Name",
        :description => "MyText",
        :link => "Link",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of dashboard/partners" do
    render
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
