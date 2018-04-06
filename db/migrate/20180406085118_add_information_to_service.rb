class AddInformationToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :has_been_done, :boolean, default: false
    add_column :services, :accepted, :boolean, default: false
  end
end
