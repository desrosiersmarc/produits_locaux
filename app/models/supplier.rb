class Supplier < ApplicationRecord
  has_many :products
  validates :name, presence: { message: "Il faut mettre un nom quand même... ;o)"},
    length: {minimum: 4, too_short:"Il faut au minimum 4 caractères",
            maximum: 45, too_long: "Il faut au maximum 45 caractères"}
end
