class Artist < ApplicationRecord
    has_many :artist_instrument
    has_many :instrument, through: :artist_instrument

    validates :name, presence: :true
    validates :title, uniqueness: :true
end
