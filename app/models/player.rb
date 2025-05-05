class Player < ApplicationRecord
  has_many :rankings, dependent: :destroy
  has_many :games, through: :rankings

  validates :first_name, :last_name, presence: true
end
