class Bus < ActiveRecord::Base
  before_save :create_name
  has_many :cities
  belongs_to :driver
  belongs_to :assistant
  belongs_to :itinerary
  attr_accessible :name,:capacity,:origin_city,:destiny_city
  
  def create_name
    origin=City.find(origin_city)
    destiny=City.find(destiny_city)
    self.name= origin.name+' to '+destiny.name
  end
end
