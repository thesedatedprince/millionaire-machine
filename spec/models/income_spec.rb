require 'rails_helper'

describe Income, type: :model do
  it { is_expected.to validate_presence_of :amount}
end
