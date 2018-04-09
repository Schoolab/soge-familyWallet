class AddObjectifToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :objectif, :string
  end
end
