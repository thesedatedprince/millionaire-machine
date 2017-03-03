require 'rails_helper'

  RSpec.describe Projection, type: :model do

  it { should validate_presence_of(:user_id)}
  it { is_expected.to belong_to(:user)}
  end
