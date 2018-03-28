class AddPhotoToMembres < ActiveRecord::Migration[5.1]
  def change
    add_column :membres, :photo, :string
  end
end
