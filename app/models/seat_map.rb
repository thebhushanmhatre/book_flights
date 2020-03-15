class SeatMap < ApplicationRecord
  validates_presence_of :first_class_rows, :first_class_seats_in_a_row, :business_class_rows, :business_class_seats_in_a_row, :economy_class_rows, :economy_class_seats_in_a_row
  validates :first_class_rows, :numericality => {greater_than_or_equal_to: 0}
  validates :first_class_seats_in_a_row, :numericality => {greater_than_or_equal_to: 0}
  validates :business_class_rows, :numericality => {greater_than_or_equal_to: 0}
  validates :business_class_seats_in_a_row, :numericality => {greater_than_or_equal_to: 0}
  validates :economy_class_rows, :numericality => {greater_than_or_equal_to: 0}
  validates :economy_class_seats_in_a_row, :numericality => {greater_than_or_equal_to: 0}
end
