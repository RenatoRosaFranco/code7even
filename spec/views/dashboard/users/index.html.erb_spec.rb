require 'rails_helper'

RSpec.describe "dashboard/users/index", type: :view do
  before(:each) do
    assign(:dashboard_users, [
      Dashboard::User.create!(
        :avatar => "Avatar",
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      ),
      Dashboard::User.create!(
        :avatar => "Avatar",
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      )
    ])
  end

  it "renders a list of dashboard/users" do
    render
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Confirmation".to_s, :count => 2
  end
end
