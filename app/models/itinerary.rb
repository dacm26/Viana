class Itinerary < ActiveRecord::Base
  has_one :bus
  belongs_to :voyage
  before_save :make_info
  belongs_to :package
  belongs_to :ticketbill
  
  def make_info
    information= Bus.find(id_bus).name+': '+departure_time.strftime("%H:%M")+'->'+arrival_time.strftime("%H:%M")
    self.info= information
  end
end
