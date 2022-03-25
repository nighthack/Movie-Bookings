class Theatre < ApplicationRecord
    has_many :screens
    belongs_to :show
end
