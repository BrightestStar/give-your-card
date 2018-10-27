# To record transaction list between users
class Transaction < ApplicationRecord
  belongs_to :receive_money_user
  belongs_to :pay_money_user
end
