class CreateFlightConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :flight_configs do |t|
      t.string :flight_origin
      t.string :flight_destination
      t.datetime :arrival_time
      t.datetime :departure_time
      t.decimal :first_class_price
      t.decimal :business_class_price
      t.decimal :economy_class_price

      t.timestamps
    end
  end
end
