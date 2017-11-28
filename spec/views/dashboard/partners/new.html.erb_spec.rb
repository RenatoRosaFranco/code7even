require 'rails_helper'

RSpec.describe "dashboard/partners/new", type: :view do
  before(:each) do
    assign(:dashboard_partner, Dashboard::Partner.new(
      :logo => "MyString",
      :name => "MyString",
      :description => "MyText",
      :link => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders new dashboard_partner form" do
    render

    assert_select "form[action=?][method=?]", dashboard_partners_path, "post" do

      assert_select "input[name=?]", "dashboard_partner[logo]"

      assert_select "input[name=?]", "dashboard_partner[name]"

      assert_select "textarea[name=?]", "dashboard_partner[description]"

      assert_select "input[name=?]", "dashboard_partner[link]"

      assert_select "input[name=?]", "dashboard_partner[tags]"
    end
  end
end
