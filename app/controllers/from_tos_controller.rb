class FromTosController < ApplicationController
  def index
    @fromtos=FromTo.all
    render layout: 'spot'
  end
  
  def show
    @ticketbill = Ticketbill.new
    f=FromTo.find(params[:id])
    if f.id.between?(1,2)
      if f.id==1
        @tickets=Ticket.all.where(id: 1..4)
      else
        @tickets=Ticket.all.where(id: 13..16)
      end
        @itineraries=Itinerary.all.where(id: 1..5)
      elsif f.id.between?(3,4)
        if f.id==3
          @tickets=Ticket.all.where(id: 5..8)
        else
          @tickets=Ticket.all.where(id: 17..20)
        end
        @itineraries=Itinerary.all.where(id: 6..8)
      elsif f.id.between?(4,6)
        if f.id==4
          @tickets=Ticket.all.where(id: 9..12)
        else
          @tickets=Ticket.all.where(id: 21..24)
        end
        @itineraries=Itinerary.all.where(id: 9..12)
    end
    
    render layout: 'spot'
  end
  
  def to_ticket
 @ticketbill = Ticketbill.new
    f=FromTo.find(params[:id])
    if f.id.between?(1,2)
      if f.id==1
        @tickets=Ticket.all.where(id: 1..4)
      else
        @tickets=Ticket.all.where(id: 13..16)
      end
        @itineraries=Itinerary.all.where(id: 1..5)
      elsif f.id.between?(3,4)
        if f.id==3
          @tickets=Ticket.all.where(id: 5..8)
        else
          @tickets=Ticket.all.where(id: 17..20)
        end
        @itineraries=Itinerary.all.where(id: 6..8)
      elsif f.id.between?(4,6)
        if f.id==4
          @tickets=Ticket.all.where(id: 9..12)
        else
          @tickets=Ticket.all.where(id: 21..24)
        end
        @itineraries=Itinerary.all.where(id: 9..12)
    end
    
    render layout: 'spot'
  end
  
  
end
