class CreateCustomercategories < ActiveRecord::Migration
  def change
    create_table :customercategories do |t|
      t.string :name

      t.timestamps
    end
    c1=Customercategory.create(name: 'Adult')
    c2=Customercategory.create(name: 'Kid/Senior')
  end
end
