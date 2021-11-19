require 'rails_helper'

RSpec.describe Link, type: :model do
  it { is_expected.to validate_url_of(:external_url) }
  it 'creates short key after saving link' do
    link = build(:link)
    link.save
    expect(link.short_key).not_to be_truthy
  end
end
