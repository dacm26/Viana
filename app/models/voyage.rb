class Voyage < ActiveRecord::Base
  has_many :itineraries
  has_one :bus
  attr_accessible :v_date, :id_itinerary, :seats, :id_bus
end
