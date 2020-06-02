class Sweep < ApplicationRecord
  has_one :player, through: :card
  has_one :game, through: :card
  belongs_to :card

  enum win_status: { no_winner: 0, no_selection: 1, pending: 2, confirmed: 3, expired: 4 }

end
