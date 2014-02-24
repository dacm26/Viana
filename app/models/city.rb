class City < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :bus
  attr_accessible :name
end
