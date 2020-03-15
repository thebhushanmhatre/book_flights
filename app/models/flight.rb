class Flight < ApplicationRecord
  belongs_to :flightConfig
  belongs_to :seatMap
  
  validates_presence_of :name, :origin, :destination, :seatMap_id, :flightConfig_id, :seatMap_id
end
