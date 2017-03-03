class Goal < ApplicationRecord

  validates :amount, presence: true,numericality: { only_integer: true }

  belongs_to :user

  validates :name, :presence => true
  validates :amount, :presence => true
  validates :start_date, :presence => true
  validates :target_date, :presence => true
end
