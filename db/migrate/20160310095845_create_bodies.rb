class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.string :name
      t.references :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
