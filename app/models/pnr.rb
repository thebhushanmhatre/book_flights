class Pnr < ApplicationRecord
  belongs_to :booking
  belongs_to :flight

  validates_presence_of :seat_class, :booking_id, :flight_id
end
