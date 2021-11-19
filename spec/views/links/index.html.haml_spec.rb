require 'rails_helper'

RSpec.describe "links/index", type: :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        external_url: "External Url",
        title: "Title",
        visits_count: 2
      ),
      Link.create!(
        external_url: "External Url",
        title: "Title",
        visits_count: 2
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", text: "External Url".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
