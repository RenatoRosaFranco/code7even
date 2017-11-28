require 'rails_helper'

RSpec.describe "dashboard/newsletters/new", type: :view do
  before(:each) do
    assign(:dashboard_newsletter, Dashboard::Newsletter.new(
      :name => "MyString",
      :email => "MyString",
      :status => false
    ))
  end

  it "renders new dashboard_newsletter form" do
    render

    assert_select "form[action=?][method=?]", dashboard_newsletters_path, "post" do

      assert_select "input[name=?]", "dashboard_newsletter[name]"

      assert_select "input[name=?]", "dashboard_newsletter[email]"

      assert_select "input[name=?]", "dashboard_newsletter[status]"
    end
  end
end
