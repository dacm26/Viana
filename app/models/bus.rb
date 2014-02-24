class Bus < ActiveRecord::Base
  validates :plate, :uniqueness => true
  has_many :cities
  belongs_to :voyage
  belongs_to :driver
  belongs_to :assistant
  attr_accessible :plate,:capacity
  
end
