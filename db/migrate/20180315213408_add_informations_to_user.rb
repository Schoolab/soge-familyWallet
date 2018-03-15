class AddInformationsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone_numbre, :string
    add_column :users, :mail, :string
    add_column :users, :birthday, :string
  end
end
