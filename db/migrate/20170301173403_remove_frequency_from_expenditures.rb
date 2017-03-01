class RemoveFrequencyFromExpenditures < ActiveRecord::Migration[5.0]
  def change
    remove_column :expenditures, :frequency, :string
  end
end
