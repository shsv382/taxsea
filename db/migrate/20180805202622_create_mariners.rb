class CreateMariners < ActiveRecord::Migration[5.2]
  def change
    create_table :mariners do |t|
      t.string :name
      t.date :birthdate
      t.text :selfinfo

      t.timestamps
    end
  end
end
