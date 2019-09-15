require "spec_config"

RSpec.describe Admin, type: :model do
  it { is_expected.to validate_presence_of(:login) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_length_of(:password).is_at_least(6).is_at_most(128) }
end
