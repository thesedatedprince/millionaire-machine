class Projection < ApplicationRecord
  belongs_to :user
  validates :projected_monthly_income, :presence => true
  validates :projected_monthly_expenditure, :presence => true
  validates :start_date, :presence => true
end
