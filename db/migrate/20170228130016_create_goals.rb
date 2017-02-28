class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.integer :amount
      t.string :name
      t.date :start_date
      t.date :target_date

      t.timestamps
    end
  end
end
