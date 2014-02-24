class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :plate
      t.integer :capacity

      t.timestamps
    end

  end
end
