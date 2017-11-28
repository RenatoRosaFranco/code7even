require 'rails_helper'

RSpec.describe "dashboard/partners/edit", type: :view do
  before(:each) do
    @dashboard_partner = assign(:dashboard_partner, Dashboard::Partner.create!(
      :logo => "MyString",
      :name => "MyString",
      :description => "MyText",
      :link => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders the edit dashboard_partner form" do
    render

    assert_select "form[action=?][method=?]", dashboard_partner_path(@dashboard_partner), "post" do

      assert_select "input[name=?]", "dashboard_partner[logo]"

      assert_select "input[name=?]", "dashboard_partner[name]"

      assert_select "textarea[name=?]", "dashboard_partner[description]"

      assert_select "input[name=?]", "dashboard_partner[link]"

      assert_select "input[name=?]", "dashboard_partner[tags]"
    end
  end
end
