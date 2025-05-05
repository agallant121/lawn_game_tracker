class Game < ApplicationRecord
  has_many :rankings, dependent: :destroy
  has_many :players, through: :rankings

  validates :name, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
