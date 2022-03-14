class Booking < ApplicationRecord
    has_many :users
    has_many :shows
    has_many :movies
end
