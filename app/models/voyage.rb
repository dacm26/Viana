class Voyage < ActiveRecord::Base
  has_many :itineraries
  attr_accessible :v_date, :id_itinerary, :seats
end
