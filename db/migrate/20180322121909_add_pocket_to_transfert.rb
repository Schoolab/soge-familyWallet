class AddPocketToTransfert < ActiveRecord::Migration[5.1]
  def change
    add_reference :transferts, :pocket, foreign_key: true
  end
end
