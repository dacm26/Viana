class Package < ActiveRecord::Base
  has_one :itinerary
  has_many :cities
  has_many :users
  before_save :make_price
  attr_accessible :weight,:origin_customer,:destiny_customer,:origin_city, :destiny_city,:price
  def make_price
    self.price=weight*35
  end
end
