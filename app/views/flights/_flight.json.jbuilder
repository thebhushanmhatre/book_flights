json.extract! flight, :id, :name, :origin, :destination, :flightConfig_id, :seatMap_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
