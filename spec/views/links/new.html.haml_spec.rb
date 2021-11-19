require 'rails_helper'

RSpec.describe "links/new", type: :view do
  before(:each) do
    assign(:link, Link.new(
      external_url: "MyString",
      title: "MyString",
      visits_count: 1,
      short_key: "MyString"
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input[name=?]", "link[external_url]"

      assert_select "input[name=?]", "link[title]"

      assert_select "input[name=?]", "link[visits_count]"

      assert_select "input[name=?]", "link[short_key]"
    end
  end
end
