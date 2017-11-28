require 'rails_helper'

RSpec.describe "dashboard/posts/edit", type: :view do
  before(:each) do
    @dashboard_post = assign(:dashboard_post, Dashboard::Post.create!(
      :title => "MyString",
      :description => "MyText",
      :content => "MyText",
      :published => false,
      :tags => "MyString"
    ))
  end

  it "renders the edit dashboard_post form" do
    render

    assert_select "form[action=?][method=?]", dashboard_post_path(@dashboard_post), "post" do

      assert_select "input[name=?]", "dashboard_post[title]"

      assert_select "textarea[name=?]", "dashboard_post[description]"

      assert_select "textarea[name=?]", "dashboard_post[content]"

      assert_select "input[name=?]", "dashboard_post[published]"

      assert_select "input[name=?]", "dashboard_post[tags]"
    end
  end
end
