class City < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :bus
  belongs_to :employee
  attr_accessible :name
end
