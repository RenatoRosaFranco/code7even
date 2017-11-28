require 'rails_helper'

RSpec.describe "dashboard/members/show", type: :view do
  before(:each) do
    @dashboard_member = assign(:dashboard_member, Dashboard::Member.create!(
      :avatar => "Avatar",
      :name => "Name",
      :description => "MyText",
      :occupation => "Occupation",
      :facebook => "Facebook",
      :twitter => "Twitter",
      :linkedin => "Linkedin"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Occupation/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Linkedin/)
  end
end
