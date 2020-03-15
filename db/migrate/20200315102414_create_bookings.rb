class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :seat_class
      t.decimal :journey_price
      t.string :user_origin
      t.string :user_destination
      t.references :flight, null: false, foreign_key: false
      t.references :User, null: false, foreign_key: false

      t.timestamps
    end
    add_foreign_key(:bookings, :flights, column: :flight_id)
    add_foreign_key(:bookings, :users, column: :User_id)
  end
end
