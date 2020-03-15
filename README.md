# rails new book_flights --skip-bundle -T
# 
# rails generate simple_form:install --bootstrap
# rails generate devise:install
# rails g devise User
# rails g devise:views
# rails g controller User index show delete
# rails g scaffold flightConfig flight_origin flight_destination arrival_time:datetime departure_time:datetime first_class_price:decimal business_class_price:decimal economy_class_price:decimal
# rails g scaffold seatMap first_class_rows:integer first_class_seats_in_a_row:integer business_class_rows:integer business_class_seats_in_a_row:integer economy_class_rows:integer economy_class_seats_in_a_row:integer
# rails g scaffold flight name origin destination flightConfig:references seatMap:references
# rails g scaffold booking seat_class journey_price:decimal user_origin user_destination flight:references User:references
# rails g scaffold pnr seat_class booking:references flight:references
# rails db:migrate:status





<!-- <%= f.association :flightConfig, prompt: "select a category", value: @flight_configs, selected: @flight_configs.ids %>
    <%= f.association :seatMap, prompt: "select a category", value: @seat_maps, selected: @seat_maps.ids %> -->