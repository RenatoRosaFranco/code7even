require 'rails_helper'

RSpec.describe "dashboard/newsletters/edit", type: :view do
  before(:each) do
    @dashboard_newsletter = assign(:dashboard_newsletter, Dashboard::Newsletter.create!(
      :name => "MyString",
      :email => "MyString",
      :status => false
    ))
  end

  it "renders the edit dashboard_newsletter form" do
    render

    assert_select "form[action=?][method=?]", dashboard_newsletter_path(@dashboard_newsletter), "post" do

      assert_select "input[name=?]", "dashboard_newsletter[name]"

      assert_select "input[name=?]", "dashboard_newsletter[email]"

      assert_select "input[name=?]", "dashboard_newsletter[status]"
    end
  end
end
