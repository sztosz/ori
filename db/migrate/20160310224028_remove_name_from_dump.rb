class RemoveNameFromDump < ActiveRecord::Migration
  def change
    remove_column :dumps, :name
  end
end
