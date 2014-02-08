class City < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :bus
end
