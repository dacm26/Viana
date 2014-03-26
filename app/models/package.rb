class Package < ActiveRecord::Base
  validates_presence_of :destiny_customer
  validates_numericality_of :weight
  has_one :itinerary
  has_many :cities
  has_many :users
  before_save :make_price
  attr_accessible :weight,:origin_customer,:destiny_customer,:origin_city, :destiny_city,:price
  validates :weight, :numericality => true
  validates :destiny_customer, :presence => true
  def make_price
    self.price=weight*35
  end
end
