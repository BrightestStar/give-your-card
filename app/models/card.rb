# The dictionary of card
class Card < ApplicationRecord
  has_many :card_record_lists
  belongs_to :interactive
end
