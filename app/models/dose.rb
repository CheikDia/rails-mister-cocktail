class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :ingredient, :cocktail, presence: true, uniqueness: {scope: [:cocktail, :ingredient]}
  end
