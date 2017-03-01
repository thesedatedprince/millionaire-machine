class AddUserRefToProjections < ActiveRecord::Migration[5.0]
  def change
    add_reference :projections, :user, foreign_key: true
  end
end
