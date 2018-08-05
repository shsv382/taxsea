class AddInfoToBoat < ActiveRecord::Migration[5.2]
  def change
  	change_table :boats do |t|
  		t.text :about
  	end
  end
end
