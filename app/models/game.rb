class Game < ApplicationRecord
  belongs_to :client
  has_many :participants
  has_many :teams, through: :participants
  belongs_to :status
  belongs_to :game_type
  has_many :cards
  has_many :questions
  has_many :sweeps, through: :cards
  has_one :team, through: :roles
  has_many :players, through: :cards
  has_many :selections, through: :questions
    
  scope :descending, -> { order(start: :desc) } 
end
