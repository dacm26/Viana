class QueriesController < ApplicationController
  layout "spot"
  
  def index
  end
  
  def query1
    @query1=Ticketbill.joins(:ticket).find(
    :all,
    select: 'count(*) as total, year(departure_date) as year, sum(price) as tot', 
    group: 'year(departure_date)', 
    order: 'count(*) DESC')
    
  end
  
  def query2
    @query2=Ticketbill.joins(:ticket).find(
    :all,
    select: 'count(*) as total, year(departure_date) as year, seat_category as sc', 
    group: 'seat_category', 
    order: 'count(*) DESC')
  end
  
  def query3
    @query3=Ticketbill.joins(:ticket).find(
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
end

