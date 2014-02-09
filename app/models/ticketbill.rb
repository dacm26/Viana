class Ticketbill < ActiveRecord::Base
  has_one :ticket
  has_one :customer
  has_one :employee
  has_one :itinerary
  before_save :make_voyage
  
  def make_voyage
    voyages=Voyage.all
    if  voyages.empty?
      v=Voyage.create(:v_date => departure_date, :id_itinerary => itinerary_id, :seats =>33)
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
        v=Voyage.create(:v_date => departure_date, :id_itinerary => itinerary_id, :seats =>33)
      end
    end
  end
end
