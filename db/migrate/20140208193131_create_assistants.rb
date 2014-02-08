class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
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
    add_index :assistants, :id_bus
  end
end
