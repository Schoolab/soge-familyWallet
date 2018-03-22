class AddNameToTransfert < ActiveRecord::Migration[5.1]
  def change
    add_column :transferts, :name, :string
  end
end
