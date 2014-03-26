class QueriesController < ApplicationController
  layout "spot"
  
  def index
  end
  
  def query1
    @query1=Ticketbill.joins(:ticket).where(paid: true).find(
    :all,
    select: 'count(*) as total, year(departure_date) as year, sum(price) as tot', 
    group: 'year(departure_date)', 
    order: 'count(*) DESC')
    
  end
  
  def query2
    @query2=Ticketbill.joins(:ticket).where(paid: true).find(
    :all,
    select: 'count(*) as total, year(departure_date) as year, seat_category as sc', 
    group: 'seat_category', 
    order: 'count(*) DESC')
  end
  
  def query3
    @query3=Ticketbill.joins(:ticket).where(paid: true).find(
    :all,
    select: 'count(*) as total, year(departure_date) as year, customer_category as cc', 
    group: 'customer_category', 
    order: 'count(*) DESC')
  end
  
  def query4
    @query4=Package.find(
    :all,
    select: 'count(*) as total, year(created_at) as year, sum(price) as pr', 
    group: 'YEAR(created_at)', 
    order: 'count(*) DESC')
  end
  
  def query5
    today=Time.now.to_formatted_s(:number)
    @tickets=Ticketbill.all
    @tickets.each do|ticket|
      it=Itinerary.find(ticket.itinerary_id)
      departure=Time.new(ticket.departure_date.year,ticket.departure_date.month,ticket.departure_date.day,it.departure_time.hour,it.departure_time.min)
      departure=departure.to_formatted_s(:number)
      m = (( departure.to_i- today.to_i) / 60)
      if m<=29
       ticket.destroy
      end
    end
  end
  def query6
    @buses=Bus.all
  end
  def query7
    @drivers=Driver.all
  end
  def query8
    @assistants=Assistant.all
  end
  def query9
    @users=User.all.where(admin: false)
  end
  
  def view_users
    @users=User.all
  end
  
  def make_admin
    user=User.find(params[:id])
    user.admin=true
    user.save
  end
  
  def payaticket
    ticketbill=Ticketbill.find(params[:id])
    ticketbill.paid=true
    ticketbill.save
    redirect_to controller: 'queries',action: 'query5'
  end

end

