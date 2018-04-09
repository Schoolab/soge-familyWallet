class AddBdayToMembre < ActiveRecord::Migration[5.1]
  def change
    add_column :membres, :day, :string
    add_column :membres, :month, :string
    add_column :membres, :year, :string
  end
end
