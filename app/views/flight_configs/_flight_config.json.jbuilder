json.extract! flight_config, :id, :flight_origin, :flight_destination, :arrival_time, :departure_time, :first_class_price, :business_class_price, :economy_class_price, :created_at, :updated_at
json.url flight_config_url(flight_config, format: :json)
