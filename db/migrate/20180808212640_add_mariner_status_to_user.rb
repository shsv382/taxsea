class AddMarinerStatusToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :mariner, :boolean
  	add_index :users, :name
  end
end
