class AddingTickets < ActiveRecord::Migration
  def change
    t1=Ticket.create(seat_category: 1,customer_category: 1,origin_city: 1,destiny_city: 2,price: 930)
    t2=Ticket.create(seat_category: 1,customer_category: 2,origin_city: 1,destiny_city: 2,price: 695)
    t3=Ticket.create(seat_category: 2,customer_category: 1,origin_city: 1,destiny_city: 2,price: 545)
    t4=Ticket.create(seat_category: 2,customer_category: 2,origin_city: 1,destiny_city: 2,price: 405)
    
    t5=Ticket.create(seat_category: 1,customer_category: 1,origin_city: 1,destiny_city: 3,price: 1172)
    t6=Ticket.create(seat_category: 1,customer_category: 2,origin_city: 1,destiny_city: 3,price: 879)
    t7=Ticket.create(seat_category: 2,customer_category: 1,origin_city: 1,destiny_city: 3,price: 672)
    t8=Ticket.create(seat_category: 2,customer_category: 2,origin_city: 1,destiny_city: 3,price: 500)
    
    t9=Ticket.create(seat_category: 1,customer_category: 1,origin_city: 2,destiny_city: 3,price: 672)
    t10=Ticket.create(seat_category: 1,customer_category: 2,origin_city: 2,destiny_city: 3,price: 500)
    t11=Ticket.create(seat_category: 2,customer_category: 1,origin_city: 2,destiny_city: 3,price: 346)
    t12=Ticket.create(seat_category: 2,customer_category: 2,origin_city: 2,destiny_city: 3,price: 260)
        
    
    
    t1=Ticket.create(seat_category: 1,customer_category: 1,origin_city: 2,destiny_city: 1,price: 930)
    t2=Ticket.create(seat_category: 1,customer_category: 2,origin_city: 2,destiny_city: 1,price: 695)
    t3=Ticket.create(seat_category: 2,customer_category: 1,origin_city: 2,destiny_city: 1,price: 545)
    t4=Ticket.create(seat_category: 2,customer_category: 2,origin_city: 2,destiny_city: 1,price: 405)
    
    t5=Ticket.create(seat_category: 1,customer_category: 1,origin_city: 3,destiny_city: 1,price: 1172)
    t6=Ticket.create(seat_category: 1,customer_category: 2,origin_city: 3,destiny_city: 1,price: 879)
    t7=Ticket.create(seat_category: 2,customer_category: 1,origin_city: 3,destiny_city: 1,price: 672)
    t8=Ticket.create(seat_category: 2,customer_category: 2,origin_city: 3,destiny_city: 1,price: 500)
    
    t9=Ticket.create(seat_category: 1,customer_category: 1,origin_city: 3,destiny_city: 2,price: 672)
    t10=Ticket.create(seat_category: 1,customer_category: 2,origin_city: 3,destiny_city: 2,price: 500)
    t11=Ticket.create(seat_category: 2,customer_category: 1,origin_city: 3,destiny_city: 2,price: 346)
    t12=Ticket.create(seat_category: 2,customer_category: 2,origin_city: 3,destiny_city: 2,price: 260)
  end
end
