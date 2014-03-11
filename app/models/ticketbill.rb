class Ticketbill < ActiveRecord::Base
  belongs_to :ticket
  has_one :user
  has_one :itinerary
  before_save :make_voyage
  attr_accessible :ticket_id, :id_customer, :itinerary_id, :departure_date
  def make_voyage
    voyages=Voyage.all
    if  voyages.empty?
      buses=Bus.all
      r_id = rand(buses.size)+1
      v=Voyage.create(:v_date => departure_date, :id_itinerary => itinerary_id, :seats =>33, :id_bus => r_id)
    else
      need_a_voyage=true
      voyages.each do|v|
        if v.v_date == departure_date && v.id_itinerary == itinerary_id
          if v.seats == 0
            return false
          else
            need_a_voyage=false
            v.seats= v.seats-1
            v.save
          end
        end
      end
      if need_a_voyage
        buses=Bus.all
        r_id = rand(buses.size)+1
        v=Voyage.create(:v_date => departure_date, :id_itinerary => itinerary_id, :seats =>33, :id_bus => r_id)
      end
    end
  end
end
