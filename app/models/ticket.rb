class Ticket < ActiveRecord::Base
  has_one :seatcategory
  has_one :customercategory
  has_many :cities
end
