require 'rails_helper'

RSpec.describe "dashboard/members/new", type: :view do
  before(:each) do
    assign(:dashboard_member, Dashboard::Member.new(
      :avatar => "MyString",
      :name => "MyString",
      :description => "MyText",
      :occupation => "MyString",
      :facebook => "MyString",
      :twitter => "MyString",
      :linkedin => "MyString"
    ))
  end

  it "renders new dashboard_member form" do
    render

    assert_select "form[action=?][method=?]", dashboard_members_path, "post" do

      assert_select "input[name=?]", "dashboard_member[avatar]"

      assert_select "input[name=?]", "dashboard_member[name]"

      assert_select "textarea[name=?]", "dashboard_member[description]"

      assert_select "input[name=?]", "dashboard_member[occupation]"

      assert_select "input[name=?]", "dashboard_member[facebook]"

      assert_select "input[name=?]", "dashboard_member[twitter]"

      assert_select "input[name=?]", "dashboard_member[linkedin]"
    end
  end
end
