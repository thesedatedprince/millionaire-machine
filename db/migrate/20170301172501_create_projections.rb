class CreateProjections < ActiveRecord::Migration[5.0]
  def change
    create_table :projections do |t|
      t.integer :projected_monthly_income
      t.integer :projected_monthly_expenditure
      t.date :start_date

      t.timestamps
    end
  end
end
