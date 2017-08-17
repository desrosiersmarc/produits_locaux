class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  belongs_to :category
end
