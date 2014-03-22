class Voyage < ActiveRecord::Base
  has_many :itineraries
  has_many :cities
  belongs_to :bus
  attr_accessible :v_date, :id_itinerary, :seats, :id_bus, :from, :to
end
