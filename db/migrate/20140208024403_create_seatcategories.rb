class CreateSeatcategories < ActiveRecord::Migration
  def change
    create_table :seatcategories do |t|
      t.string :name

      t.timestamps
    end
    c1=Seatcategory.create(name: 'Diamond')
    c2=Seatcategory.create(name: 'Economic')
  end
end
