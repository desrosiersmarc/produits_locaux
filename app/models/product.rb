class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  belongs_to :category

  has_many :order_items

  has_attachment :photo

  validates :name, presence: true, length: { maximum: 50, minimum: 5}
  validates :price, presence: true, numericality: true
  validates :price_per_weight, presence: true, numericality: true
  validates :weight, presence: true, numericality: true
  # validates :description, presence: true
  validates :category_id, presence: true
  validates :supplier_id , presence: true
end
