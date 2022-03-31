class AddPaymenttoBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :po, :integer
  end
end
