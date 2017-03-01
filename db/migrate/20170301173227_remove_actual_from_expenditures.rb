class RemoveActualFromExpenditures < ActiveRecord::Migration[5.0]
  def change
    remove_column :expenditures, :actual, :boolean
  end
end
