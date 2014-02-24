class Package < ActiveRecord::Base
  has_one :itinerary
  has_many :users
  before_save :make_price
  
  def make_price
    self.price=weight*35
  end
end
