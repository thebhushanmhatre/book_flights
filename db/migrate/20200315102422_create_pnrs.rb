class CreatePnrs < ActiveRecord::Migration[6.0]
  def change
    create_table :pnrs do |t|
      t.string :seat_class
      t.references :booking, null: false, foreign_key: false
      t.references :flight, null: false, foreign_key: false

      t.timestamps
    end
    add_foreign_key(:pnrs, :bookings, column: :booking_id)
    add_foreign_key(:pnrs, :flights, column: :flight_id)
  end
end
