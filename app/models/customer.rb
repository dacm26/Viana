class Customer < ActiveRecord::Base
  belongs_to :ticketbill
  belongs_to :package
end
