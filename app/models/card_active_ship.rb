class CardActiveShip < ApplicationRecord
  belongs_to :card
  belongs_to :interactive
end
