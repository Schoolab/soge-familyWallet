class CreateTransferts < ActiveRecord::Migration[5.1]
  def change
    create_table :transferts do |t|
      t.string :value
      t.references :user, foreign_key: true
      t.references :membre, foreign_key: true
      t.string :frequence

      t.timestamps
    end
  end
end
