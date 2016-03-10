class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :name
      t.references :body, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
