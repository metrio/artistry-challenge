class Instrument < ApplicationRecord
    has_many :artist_instrument
    has_many :artist, through: :artist_instrument


    
end
