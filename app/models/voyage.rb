class Voyage < ActiveRecord::Base
  has_many :itineraries
end
