# The dictionary of card
class Card < ApplicationRecord
  has_many :card_record_lists
  has_many :card_active_ships
end
