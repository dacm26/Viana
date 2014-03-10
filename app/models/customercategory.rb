class Customercategory < ActiveRecord::Base
  has_many :tickets
  attr_accessible :name
end
