class Employee < ActiveRecord::Base
  has_one :city
  belongs_to :ticketbill
end
