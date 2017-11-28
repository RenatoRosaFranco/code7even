require 'rails_helper'

RSpec.describe "dashboard/services/edit", type: :view do
  before(:each) do
    @dashboard_service = assign(:dashboard_service, Dashboard::Service.create!(
      :name => "MyString",
      :description => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders the edit dashboard_service form" do
    render

    assert_select "form[action=?][method=?]", dashboard_service_path(@dashboard_service), "post" do

      assert_select "input[name=?]", "dashboard_service[name]"

      assert_select "input[name=?]", "dashboard_service[description]"

      assert_select "input[name=?]", "dashboard_service[tags]"
    end
  end
end
