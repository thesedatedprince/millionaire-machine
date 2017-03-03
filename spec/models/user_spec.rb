require 'rails_helper'

describe User do
  it { is_expected.to have_many(:incomes).dependent(:destroy) }
  it { is_expected.to have_many(:expenditures).dependent(:destroy) }
  it { is_expected.to have_one(:goal)}
  # it { should have_secure_password }
end
