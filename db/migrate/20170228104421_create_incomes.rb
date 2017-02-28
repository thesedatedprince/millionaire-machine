class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.integer :amount
      t.string :name
      t.date :date
      t.boolean :actual
      t.string :frequency

      t.timestamps
    end
  end
end
