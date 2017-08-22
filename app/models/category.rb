class Category < ApplicationRecord
  has_many :products
  has_ancestry

  validates :name, presence: true, length: { maximum: 20, minimum: 2, too_short: "Il faut plus de lettres", too_long:"Trop, c'est trop... ;/"}
end
