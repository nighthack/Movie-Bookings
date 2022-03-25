class Booking < ApplicationRecord
    has_many :users
    has_many :shows, autosave: true 
    has_many :movies
end
