class CreateEcus < ActiveRecord::Migration
  def change
    create_table :ecus do |t|
      t.string :name
      t.references :engine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
