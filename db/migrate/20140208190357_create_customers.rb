class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :address
      t.string :email
      t.integer :mobile

      t.timestamps
    end
  end
end
