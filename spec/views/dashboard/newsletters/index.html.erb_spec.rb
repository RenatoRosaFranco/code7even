require 'rails_helper'

RSpec.describe "dashboard/newsletters/index", type: :view do
  before(:each) do
    assign(:dashboard_newsletters, [
      Dashboard::Newsletter.create!(
        :name => "Name",
        :email => "Email",
        :status => false
      ),
      Dashboard::Newsletter.create!(
        :name => "Name",
        :email => "Email",
        :status => false
      )
    ])
  end

  it "renders a list of dashboard/newsletters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
