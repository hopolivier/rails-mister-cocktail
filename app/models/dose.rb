class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  # On peut indifféremment valider l'unicité du couple ingrédient/cocktail dans le validates :cocktail
  # ou dans le validates :ingredient, mais les messages d'erreur générés en cas de doublon seront différents :
  # "ingredient is already taken" ou "cocktail is already taken"
  # On choisira donc en fonction de l'expérience utilisateur voulue
end
