class Income < ApplicationRecord
  validates :amount, presence: true,numericality: { only_integer: true }
end
