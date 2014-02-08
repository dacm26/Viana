class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :address
      t.string :email
      t.integer :mobile
      t.decimal :salary
      t.integer :id_bus

      t.timestamps
    end
    add_index :drivers, :id_bus
  end
end
