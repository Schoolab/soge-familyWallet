class CreatePaiements < ActiveRecord::Migration[5.1]
  def change
    create_table :paiements do |t|
      t.float :roof, default: 2
      t.string :plafond, default: "Mois"
      t.string :mode, default: "N/A"
      t.string :adress_1, default: "N/A"
      t.string :adress_2, default: "N/A"
      t.string :cp, default: "N/A"
      t.string :city, default: "N/A"
      t.string :country, default: "N/A"

      t.timestamps
    end
  end
end
