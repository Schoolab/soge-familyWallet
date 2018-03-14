class CreatePoches < ActiveRecord::Migration[5.1]
  def change
    create_table :poches do |t|
      t.string :name
      t.float :credit

      t.timestamps
    end
  end
end
