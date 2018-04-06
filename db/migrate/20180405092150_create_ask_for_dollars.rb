class CreateAskForDollars < ActiveRecord::Migration[5.1]
  def change
    create_table :ask_for_dollars do |t|
      t.integer :credit
      t.text :description
      t.string :object
      t.boolean :accepted, default: false
      t.boolean :has_been_reed, default: false

      t.timestamps
    end
  end
end
