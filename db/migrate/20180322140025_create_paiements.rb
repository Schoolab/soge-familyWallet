class CreatePaiements < ActiveRecord::Migration[5.1]
  def change
    create_table :paiements do |t|
      t.float :roof
      t.string :plafond
      t.string :mode
      t.string :adress_1
      t.string :adress_2
      t.string :cp
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
