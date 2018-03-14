class CreateFamilyPoches < ActiveRecord::Migration[5.1]
  def change
    create_table :family_poches do |t|
      t.references :family, foreign_key: true
      t.references :poche, foreign_key: true

      t.timestamps
    end
  end
end
