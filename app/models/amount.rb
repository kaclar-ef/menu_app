class Amount < ApplicationRecord
  has_many :costs, dependent: :destroy
  has_many :ingredients, through: :costs
  has_many :menus, through: :costs
end
