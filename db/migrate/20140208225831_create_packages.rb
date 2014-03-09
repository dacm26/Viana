class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.decimal :weight
      t.string :origin_customer
      t.string :destiny_customer
      t.integer :origin_city
      t.integer :destiny_city
      t.decimal :price

      t.timestamps
    end
    add_index :packages, :origin_customer
    add_index :packages, :origin_city
    add_index :packages, :destiny_city
    add_index :packages, :destiny_customer
  end
end
