class CreateFromTos < ActiveRecord::Migration
  def change
    create_table :from_tos do |t|
      t.string :info
      t.timestamps
    end
    c1=FromTo.create(info: 'Tegucigalpa->San Pedro Sula')
    c2=FromTo.create(info: 'San Pedro Sula->Tegucigalpa')
    c3=FromTo.create(info: 'Tegucigalpa->Ceiba')
    c4=FromTo.create(info: 'Ceiba->Tegucigalpa')
    c5=FromTo.create(info: 'San Pedro Sula->Ceiba')
    c6=FromTo.create(info: 'Ceiba->San Pedro Sula')
  end
end
