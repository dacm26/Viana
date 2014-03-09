class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name

      t.timestamps
    end
    c1=City.create(name: 'TGA')
    c2=City.create(name: 'SPS')
    c3=City.create(name: 'CBA')
  end
end
