json.extract! pnr, :id, :seat_class, :booking_id, :flight_id, :created_at, :updated_at
json.url pnr_url(pnr, format: :json)
