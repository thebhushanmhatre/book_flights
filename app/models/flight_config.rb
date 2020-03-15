class FlightConfig < ApplicationRecord
  validates_presence_of :flight_origin, :flight_destination, :arrival_time, :departure_time, :economy_class_price
end
