class AddMembreToAskForDollar < ActiveRecord::Migration[5.1]
  def change
    add_reference :ask_for_dollars, :membre, foreign_key: true
  end
end
