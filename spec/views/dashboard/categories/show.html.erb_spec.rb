require 'rails_helper'

RSpec.describe "dashboard/categories/show", type: :view do
  before(:each) do
    @dashboard_category = assign(:dashboard_category, Dashboard::Category.create!(
      :name => "Name",
      :description => "MyText",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Tags/)
  end
end
