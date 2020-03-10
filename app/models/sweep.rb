class Sweep < ApplicationRecord
  has_one :player, through: :card
  has_one :game, through: :card
  belongs_to :card
end
