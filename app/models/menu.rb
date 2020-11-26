class Menu < ApplicationRecord
  belogns_to :menu_type
  belongs_to :color
  has_many :costs
  has_many :ingredients, through: :cookings
  has_many :amounts, through: :costs
end
