class CreateAskForMoneys < ActiveRecord::Migration[5.1]
  def change
    create_table :ask_for_moneys do |t|
      t.integer :credit
      t.string :object
      t.string :pictur
      t.string :description
      t.references :membre, foreign_key: true
      t.boolean :finish

      t.timestamps
    end
  end
end
