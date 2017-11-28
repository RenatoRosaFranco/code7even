require 'rails_helper'

RSpec.describe "dashboard/members/index", type: :view do
  before(:each) do
    assign(:dashboard_members, [
      Dashboard::Member.create!(
        :avatar => "Avatar",
        :name => "Name",
        :description => "MyText",
        :occupation => "Occupation",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :linkedin => "Linkedin"
      ),
      Dashboard::Member.create!(
        :avatar => "Avatar",
        :name => "Name",
        :description => "MyText",
        :occupation => "Occupation",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :linkedin => "Linkedin"
      )
    ])
  end

  it "renders a list of dashboard/members" do
    render
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
  end
end
