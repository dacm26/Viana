class Ticket < ActiveRecord::Base
  has_one :seatcategory
  has_one :customercategory
  has_many :cities
  belongs_to :ticketbill
  before_save :make_info
  attr_accessible :info,:seat_category,:customer_category,:origin_city,:destiny_city,:price
  def make_info
    information=Seatcategory.find(seat_category).name+', '+Customercategory.find(customer_category).name+', '+City.find(origin_city).name+' to '+City.find(destiny_city).name+': $'+price.to_s
    self.info=information
  end
  
end
