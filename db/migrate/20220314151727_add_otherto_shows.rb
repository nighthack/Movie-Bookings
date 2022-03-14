class AddOthertoShows < ActiveRecord::Migration[6.1]
  def change
    add_reference :shows, :theatre, foreign_key: true
    add_reference :shows, :screen, foreign_key: true
    add_reference :shows, :movie, foreign_key: true
  end
end
