class AddMarinerIdToBoat < ActiveRecord::Migration[5.2]
  def change
  	change_table :boats do |t|
  		t.integer :mariner_id
  	end
  end
end
