class AddAccessibleToPocket < ActiveRecord::Migration[5.1]
  def change
    add_column :pockets, :accessible, :boolean
  end
end
