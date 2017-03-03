class Expenditure < ApplicationRecord

  validates :amount, presence: true, numericality: { only_integer: true }

  belongs_to :user

    validates :name, :presence => true
    validates :amount, :presence => true
    validates :date, :presence => true


end
