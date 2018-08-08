class RenameMarinersToUsers < ActiveRecord::Migration[5.2]
	def change
	  rename_table :mariners, :users
	end
end
