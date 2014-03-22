class City < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :voyage
  belongs_to :bus
  belongs_to :package
  attr_accessible :name
end
