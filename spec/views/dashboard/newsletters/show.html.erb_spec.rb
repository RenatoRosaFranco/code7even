require 'rails_helper'

RSpec.describe "dashboard/newsletters/show", type: :view do
  before(:each) do
    @dashboard_newsletter = assign(:dashboard_newsletter, Dashboard::Newsletter.create!(
      :name => "Name",
      :email => "Email",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
  end
end
