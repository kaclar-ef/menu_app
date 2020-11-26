class Ingredient < ApplicationRecord
  has_many: costs
  has_many: amounts, through: :costs
  has_many: menus, through: :costs
end
