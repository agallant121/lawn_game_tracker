class Ranking < ApplicationRecord
  belongs_to :player
  belongs_to :game

  validates :value, presence: true, inclusion: { in: 1..10 }
end
