class AddContentSizeToDump < ActiveRecord::Migration
  def change
    add_column :dumps, :content_size, :integer
  end
end
