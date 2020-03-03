class Card < ApplicationRecord
  belongs_to :game
  belongs_to :player
  has_one :status

  enum status: [ :incomplete, :complete ]
end
