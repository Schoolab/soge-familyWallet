class AddMembreToUserPocket < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_pockets, :membre, foreign_key: true
  end
end
