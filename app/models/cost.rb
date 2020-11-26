class Cost < ApplicationRecord
  belongs_to :ingredient
  belongs_to :amount
  belongs_to :menu
end
