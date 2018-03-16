class CreateUserPockets < ActiveRecord::Migration[5.1]
  def change
    create_table :user_pockets do |t|
      t.references :user, foreign_key: true
      t.references :pocket, foreign_key: true

      t.timestamps
    end
  end
end
