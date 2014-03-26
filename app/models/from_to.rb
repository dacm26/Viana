class FromTo < ActiveRecord::Base
  attr_accessible :info
  validates :info, :presence => true
end