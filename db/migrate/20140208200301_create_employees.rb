class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :address
      t.string :email
      t.integer :mobile
      t.decimal :salary
      t.integer :id_terminal

      t.timestamps
    end
    add_index :employees, :id_terminal
  end
end
