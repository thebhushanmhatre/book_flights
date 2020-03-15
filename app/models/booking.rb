class Booking < ApplicationRecord
  belongs_to :flight
  belongs_to :User

  validates_presence_of :seat_class, :journey_price, :user_origin, :user_destination, :flight_id, :User_id
end
