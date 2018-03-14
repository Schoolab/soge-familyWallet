class CreateUserFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :user_families do |t|
      t.references :user, foreign_key: true
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
