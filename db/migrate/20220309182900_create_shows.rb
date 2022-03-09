class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.time :st
      t.time :ed
      t.integer :money
      t.string :av_seats
      t.string :oc_seats
  
      t.timestamps
    end
  end
end
