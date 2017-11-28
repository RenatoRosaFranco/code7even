require 'rails_helper'

RSpec.describe "dashboard/partners/show", type: :view do
  before(:each) do
    @dashboard_partner = assign(:dashboard_partner, Dashboard::Partner.create!(
      :logo => "Logo",
      :name => "Name",
      :description => "MyText",
      :link => "Link",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Tags/)
  end
end
