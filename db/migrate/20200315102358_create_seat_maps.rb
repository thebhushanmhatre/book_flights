class CreateSeatMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :seat_maps do |t|
      t.integer :first_class_rows
      t.integer :first_class_seats_in_a_row
      t.integer :business_class_rows
      t.integer :business_class_seats_in_a_row
      t.integer :economy_class_rows
      t.integer :economy_class_seats_in_a_row

      t.timestamps
    end
  end
end
