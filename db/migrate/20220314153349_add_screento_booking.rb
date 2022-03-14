class AddScreentoBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :screen, foreign_key: true
  end
end