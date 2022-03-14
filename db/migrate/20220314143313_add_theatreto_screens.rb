class AddTheatretoScreens < ActiveRecord::Migration[6.1]
  def change
    add_reference :screens, :theatre, foreign_key: true
  end
end
