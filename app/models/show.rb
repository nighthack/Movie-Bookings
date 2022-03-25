class Show < ApplicationRecord
    serialize :av_seats
    serialize :oc_seats
    has_many :screens
    has_many :bookings, autosave: true 
    has_many :theatres
    has_many :movies

end
