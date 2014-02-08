class CreateCustomercategories < ActiveRecord::Migration
  def change
    create_table :customercategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
