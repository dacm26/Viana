class Voyage < ActiveRecord::Base
  has_many :itineraries
  belongs_to :bus
  attr_accessible :v_date, :id_itinerary, :seats, :id_bus
end
