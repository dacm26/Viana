class Itinerary < ActiveRecord::Base
  belongs_to :voyage
  before_save :make_info
  belongs_to :package
  belongs_to :ticketbill
  attr_accessible :info, :departure_time,:arrival_time,:id_bus
  validates :info, :presence => true
  def make_info
    information= departure_time.strftime("%H:%M")+'->'+arrival_time.strftime("%H:%M")
    self.info= information
  end
end
