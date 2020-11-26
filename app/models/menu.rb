class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :menu_type
  belongs_to :color
  has_many :costs, dependent: :destroy
  has_many :ingredients, through: :costs
  has_many :amounts, through: :costs
end
