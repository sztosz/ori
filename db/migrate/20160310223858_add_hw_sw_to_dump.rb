class AddHwSwToDump < ActiveRecord::Migration
  def change
    add_column :dumps, :hw, :string
    add_column :dumps, :sw, :string
  end
end
