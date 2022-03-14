class Movie < ApplicationRecord
    belongs_to :show
    belongs_to :booking
end
