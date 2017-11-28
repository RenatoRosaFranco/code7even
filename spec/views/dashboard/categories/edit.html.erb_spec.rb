require 'rails_helper'

RSpec.describe "dashboard/categories/edit", type: :view do
  before(:each) do
    @dashboard_category = assign(:dashboard_category, Dashboard::Category.create!(
      :name => "MyString",
      :description => "MyText",
      :tags => "MyString"
    ))
  end

  it "renders the edit dashboard_category form" do
    render

    assert_select "form[action=?][method=?]", dashboard_category_path(@dashboard_category), "post" do

      assert_select "input[name=?]", "dashboard_category[name]"

      assert_select "textarea[name=?]", "dashboard_category[description]"

      assert_select "input[name=?]", "dashboard_category[tags]"
    end
  end
end
