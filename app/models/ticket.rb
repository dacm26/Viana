class Ticket < ActiveRecord::Base
  belongs_to :seatcategory
  belongs_to :customercategory
  has_many :cities
  has_many :ticketbills
  before_save :make_info
  attr_accessible :info,:seat_category,:customer_category,:origin_city,:destiny_city,:price
  validates :price, :numericality => true
  def make_info
    information=Seatcategory.find(seat_category).name+', '+Customercategory.find(customer_category).name+', '+City.find(origin_city).name+' to '+City.find(destiny_city).name+': $'+price.to_s
    self.info=information
  end

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end
end

  
end
