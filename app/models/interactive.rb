# record all active belongs to users
class Interactive < ApplicationRecord
  has_many :users
  has_many :cards
  has_one :admin_user, class_name: 'User'
end
