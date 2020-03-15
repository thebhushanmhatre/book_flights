json.extract! seat_map, :id, :first_class_rows, :first_class_seats_in_a_row, :business_class_rows, :business_class_seats_in_a_row, :economy_class_rows, :economy_class_seats_in_a_row, :created_at, :updated_at
json.url seat_map_url(seat_map, format: :json)
