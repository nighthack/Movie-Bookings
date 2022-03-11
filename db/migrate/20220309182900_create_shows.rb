class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.time :st
      t.time :ed
      t.integer :money
      t.string :av_seats, :default => [].to_yaml, array: true
      t.string :oc_seats, :default => [].to_yaml, array: true
  
      t.timestamps
    end
  end
end
