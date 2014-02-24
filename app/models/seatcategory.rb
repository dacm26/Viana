class Seatcategory < ActiveRecord::Base
  belongs_to :ticket
  attr_accessible :name
end
