require 'rails_helper'

RSpec.describe "dashboard/posts/index", type: :view do
  before(:each) do
    assign(:dashboard_posts, [
      Dashboard::Post.create!(
        :title => "Title",
        :description => "MyText",
        :content => "MyText",
        :published => false,
        :tags => "Tags"
      ),
      Dashboard::Post.create!(
        :title => "Title",
        :description => "MyText",
        :content => "MyText",
        :published => false,
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of dashboard/posts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
