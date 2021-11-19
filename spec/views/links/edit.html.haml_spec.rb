require 'rails_helper'

RSpec.describe "links/edit", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      external_url: "MyString",
      title: "MyString",
      visits_count: 1,
      short_key: "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    assert_select "form[action=?][method=?]", link_path(@link), "post" do

      assert_select "input[name=?]", "link[external_url]"

      assert_select "input[name=?]", "link[title]"

      assert_select "input[name=?]", "link[visits_count]"

      assert_select "input[name=?]", "link[short_key]"
    end
  end
end
