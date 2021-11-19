require 'rails_helper'

RSpec.describe Link, type: :model do
  it { is_expected.to validate_url_of(:external_url) }
end
