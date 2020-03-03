class Question < ApplicationRecord
  belongs_to :game
  has_many :selections

  enum status: [ :incomplete, :complete ]

end
