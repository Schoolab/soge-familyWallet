class CreateMembrePaiements < ActiveRecord::Migration[5.1]
  def change
    create_table :membre_paiements do |t|
      t.references :membre, foreign_key: true
      t.references :paiement, foreign_key: true

      t.timestamps
    end
  end
end
