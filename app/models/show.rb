class Show < ApplicationRecord
    serialize :av_seats, :oc_seats
    has_many :screens
    belongs_to :booking
end
