class Show < ApplicationRecord
    serialize :av_seats
    serialize :oc_seats
    has_many :screens
    belongs_to :booking
end
