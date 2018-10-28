# To record receiving customer, affording custome, cards, and cause
class CardRecordList < ApplicationRecord
  belongs_to :receive_card_user, class_name: 'User'
  belongs_to :afford_card_user, class_name: 'User', optional: true
  belongs_to :interactive, optional: true
  belongs_to :card
end
