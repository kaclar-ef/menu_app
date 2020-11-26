class Ingredient < ApplicationRecord
  has_many :costs, dependent: :destroy
  has_many :amounts, through: :costs
  has_many :menus, through: :costs
end
