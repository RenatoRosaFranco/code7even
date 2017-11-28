require 'rails_helper'

RSpec.describe "dashboard/members/edit", type: :view do
  before(:each) do
    @dashboard_member = assign(:dashboard_member, Dashboard::Member.create!(
      :avatar => "MyString",
      :name => "MyString",
      :description => "MyText",
      :occupation => "MyString",
      :facebook => "MyString",
      :twitter => "MyString",
      :linkedin => "MyString"
    ))
  end

  it "renders the edit dashboard_member form" do
    render

    assert_select "form[action=?][method=?]", dashboard_member_path(@dashboard_member), "post" do

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
