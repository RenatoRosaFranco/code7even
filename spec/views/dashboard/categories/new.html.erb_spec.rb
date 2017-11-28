require 'rails_helper'

RSpec.describe "dashboard/categories/new", type: :view do
  before(:each) do
    assign(:dashboard_category, Dashboard::Category.new(
      :name => "MyString",
      :description => "MyText",
      :tags => "MyString"
    ))
  end

  it "renders new dashboard_category form" do
    render

    assert_select "form[action=?][method=?]", dashboard_categories_path, "post" do

      assert_select "input[name=?]", "dashboard_category[name]"

      assert_select "textarea[name=?]", "dashboard_category[description]"

      assert_select "input[name=?]", "dashboard_category[tags]"
    end
  end
end
