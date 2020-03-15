class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.references :flightConfig, null: false, foreign_key: false
      t.references :seatMap, null: false, foreign_key: false

      t.timestamps
    end
    add_foreign_key(:flights, :flight_configs, column: :flightConfig_id)
    add_foreign_key(:flights, :seat_maps, column: :seatMap_id)
  end
end
