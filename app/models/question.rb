class Question < ApplicationRecord
  belongs_to :game
  has_many :selections

  enum status: [ :incomplete, :complete ]

  accepts_nested_attributes_for :selections

  scope :descending, -> { order(question_id: :desc) } 
end
