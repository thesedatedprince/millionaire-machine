require 'rails_helper'

  RSpec.describe Projection, type: :model do

  it { is_expected.to belong_to(:user)}
  it { should validate_presence_of(:start_date)}
  end
