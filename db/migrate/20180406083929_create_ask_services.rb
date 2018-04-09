class CreateAskServices < ActiveRecord::Migration[5.1]
  def change
    create_table :ask_services do |t|
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.references :membre, foreign_key: true

      t.timestamps
    end
  end
end
