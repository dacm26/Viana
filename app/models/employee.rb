class Employee < ActiveRecord::Base
  has_one :city
  belongs_to :ticketbill
  attr_accessible :name,:age,:gender,:address, :email,:mobile,:salary, :id_terminal
end
