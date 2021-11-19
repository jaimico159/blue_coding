require 'rails_helper'

RSpec.describe "links/show", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      external_url: "External Url",
      title: "Title",
      visits_count: 2,
      short_key: "Short Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/External Url/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Short Key/)
  end
end
