json.extract! booking, :id, :seat_class, :journey_price, :user_origin, :user_destination, :flight_id, :User_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
