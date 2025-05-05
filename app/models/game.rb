class Game < ApplicationRecord
  has_many :rankings, dependent: :destroy
  has_many :players, through: :rankings

  validates :name, presence: true
end
