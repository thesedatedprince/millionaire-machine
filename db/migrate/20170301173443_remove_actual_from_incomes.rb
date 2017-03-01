class RemoveActualFromIncomes < ActiveRecord::Migration[5.0]
  def change
    remove_column :incomes, :actual, :boolean
  end
end
