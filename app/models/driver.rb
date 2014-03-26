class Driver < ActiveRecord::Base
  has_one :bus
  attr_accessible :name,:age,:gender,:address,:email,:mobile,:salary, :id_bus
  validates :name, :presence => true, :length => { :minimum => 3 }
  validates :age, :numericality => true
  validates :gender, :presence => true
  validates :address, :presence => true
  validates :email, :presence => true
  validates :mobile, :numericality => true, :length => { :minimum => 8 }
  validates :salary, :numericality => true
  validates :id_bus, :numericality => true
end
