class Package < ActiveRecord::Base
  has_one :itinerary
  has_many :customers
  before_save :make_price
  
  def make_price
    self.price=weight*35
  end
end
