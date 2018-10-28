# record all active belongs to users
class Interactive < ApplicationRecord
  has_many :users
  has_many :card_active_ships
  has_many :cards, through: :card_active_ships
  has_one :admin_user, class_name: 'User'
end
