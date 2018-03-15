class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :fisrt_name
      t.string :last_name
      t.string :birthday
      t.boolean :sexe

      t.timestamps
    end
  end
end
