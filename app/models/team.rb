class Team < ApplicationRecord
  has_many :games, through: :participants
  has_many :participants
  belongs_to :role
  has_many :players, through: :roles
end
