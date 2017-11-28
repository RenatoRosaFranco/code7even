require 'rails_helper'

RSpec.describe "dashboard/services/show", type: :view do
  before(:each) do
    @dashboard_service = assign(:dashboard_service, Dashboard::Service.create!(
      :name => "Name",
      :description => "Description",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Tags/)
  end
end
