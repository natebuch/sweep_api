class Player < ApplicationRecord
  has_many :cards
  has_many :picks
  has_many :sweeps through :cards
end
