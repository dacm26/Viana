class AddFromToVoyages < ActiveRecord::Migration
  def change
    add_column :voyages, :from, :integer
    add_column :voyages, :to, :integer
    add_index :voyages, :from
    add_index :voyages, :to
  end
end
