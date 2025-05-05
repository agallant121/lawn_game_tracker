class Player < ApplicationRecord
  has_many :rankings, dependent: :destroy
  has_many :games, through: :rankings

  validates :first_name, :last_name, presence: true 
  validates :first_name, uniqueness: { scope: :last_name }

  enum role: { player: 0, admin: 1 }

  accepts_nested_attributes_for :rankings

  def name
    "#{first_name} #{last_name}"
  end
end
