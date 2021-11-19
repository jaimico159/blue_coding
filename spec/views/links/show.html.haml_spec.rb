require 'rails_helper'

RSpec.describe "links/show", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      external_url: "External Url",
      title: "Title",
      visits_count: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/External Url/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
