class Player < ApplicationRecord
  has_many :cards
  has_many :picks
end
