require 'rails_helper'

RSpec.describe "dashboard/categories/index", type: :view do
  before(:each) do
    assign(:dashboard_categories, [
      Dashboard::Category.create!(
        :name => "Name",
        :description => "MyText",
        :tags => "Tags"
      ),
      Dashboard::Category.create!(
        :name => "Name",
        :description => "MyText",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of dashboard/categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
