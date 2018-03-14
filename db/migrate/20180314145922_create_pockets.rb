class CreatePockets < ActiveRecord::Migration[5.1]
  def change
    create_table :pockets do |t|
      t.string :name
      t.float :credit

      t.timestamps
    end
  end
end
