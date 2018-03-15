class CreateUserMembres < ActiveRecord::Migration[5.1]
  def change
    create_table :user_membres do |t|
      t.references :user, foreign_key: true
      t.references :membre, foreign_key: true

      t.timestamps
    end
  end
end
