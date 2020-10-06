require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:donation) { build(:donation) }
  let(:donation_with_wrong_value) { build(:donation, value: 0) }

  it 'is valid with valid attributes' do
    expect(donation).to be_valid
  end

  it 'is not valid without a title' do
    expect(donation_with_wrong_value).to_not be_valid
  end

end