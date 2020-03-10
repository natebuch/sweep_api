class Player < ApplicationRecord
  has_many :cards
  has_many :picks
  has_many :sweeps, through: :cards
  has_many :games, through: :cards
  has_one :address
end
