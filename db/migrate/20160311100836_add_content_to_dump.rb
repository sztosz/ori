class AddContentToDump < ActiveRecord::Migration
  def change
    add_column :dumps, :content, :oid, null: false
  end
end
