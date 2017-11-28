require 'rails_helper'

RSpec.describe "dashboard/posts/show", type: :view do
  before(:each) do
    @dashboard_post = assign(:dashboard_post, Dashboard::Post.create!(
      :title => "Title",
      :description => "MyText",
      :content => "MyText",
      :published => false,
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Tags/)
  end
end
