class Expenditure < ApplicationRecord
  belongs_to :user
    validates :name, :presence => true
    validates :amount, :presence => true
    validates :date, :presence => true

end
