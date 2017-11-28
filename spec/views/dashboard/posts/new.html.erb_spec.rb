require 'rails_helper'

RSpec.describe "dashboard/posts/new", type: :view do
  before(:each) do
    assign(:dashboard_post, Dashboard::Post.new(
      :title => "MyString",
      :description => "MyText",
      :content => "MyText",
      :published => false,
      :tags => "MyString"
    ))
  end

  it "renders new dashboard_post form" do
    render

    assert_select "form[action=?][method=?]", dashboard_posts_path, "post" do

      assert_select "input[name=?]", "dashboard_post[title]"

      assert_select "textarea[name=?]", "dashboard_post[description]"

      assert_select "textarea[name=?]", "dashboard_post[content]"

      assert_select "input[name=?]", "dashboard_post[published]"

      assert_select "input[name=?]", "dashboard_post[tags]"
    end
  end
end
