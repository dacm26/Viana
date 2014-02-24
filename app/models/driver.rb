class Driver < ActiveRecord::Base
  has_one :bus
  attr_accessible :name,:age,:gender,:address,:email,:mobile,:salary, :id_bus
end
