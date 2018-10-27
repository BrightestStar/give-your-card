# the user_wallet is the user's wallet,
# which has many kinds of cards and some money.
class UserWallet < ApplicationRecord
  belongs_to :user, optional: true
end
