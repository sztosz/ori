class CreateDumps < ActiveRecord::Migration
  def change
    create_table :dumps do |t|
      t.string :name
      t.references :ecu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
