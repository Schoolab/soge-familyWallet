class AddPhotoToAskForMoney < ActiveRecord::Migration[5.1]
  def change
    add_column :ask_for_moneys, :photo, :string
  end
end
