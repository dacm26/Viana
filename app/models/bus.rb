class Bus < ActiveRecord::Base
  validates :plate, :uniqueness => true
  has_many :cities
  has_many :voyages
  belongs_to :driver
  belongs_to :assistant
  attr_accessible :plate,:capacity
  before_destroy :nullify
  validates :plate, :presence => true
  validates :capacity, :numericality => true
  def nullify
    drivers=Driver.all.where(id_bus: id)
    drivers.each do|d|
      d.id_bus=0
    end
    assistants=Assistant.all.where(id_bus: id)
    assistants.each do|d|
      d.id_bus=0
    end 
  end
end
