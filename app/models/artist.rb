class Artist < ApplicationRecord
    has_many :artist_instrument
    has_many :instrument, through: :artist_instrument

end
