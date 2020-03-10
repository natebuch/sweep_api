class Card < ApplicationRecord
  has_one :game
  belongs_to :player
  has_one :sweep

  enum status: [ :incomplete, :complete ]
end
