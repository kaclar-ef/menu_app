class Amount < ApplicationRecord
  has_many: costs
  has_many: ingredients, through: :costs
  has_many: menus, through: :costs
end
