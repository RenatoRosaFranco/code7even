require 'rails_helper'

RSpec.describe "dashboard/services/new", type: :view do
  before(:each) do
    assign(:dashboard_service, Dashboard::Service.new(
      :name => "MyString",
      :description => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders new dashboard_service form" do
    render

    assert_select "form[action=?][method=?]", dashboard_services_path, "post" do

      assert_select "input[name=?]", "dashboard_service[name]"

      assert_select "input[name=?]", "dashboard_service[description]"

      assert_select "input[name=?]", "dashboard_service[tags]"
    end
  end
end
