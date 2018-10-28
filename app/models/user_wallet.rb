# the user_wallet is the user's wallet,
# which has many kinds of cards and some money.
class UserWallet < ApplicationRecord
  belongs_to :user, optional: true
  serialize :kinds_and_types, Hash

  class << self
    def check_card(crl)
      user = User.find(crl.receive_card_user_id)
      wallet = user.user_wallet
      card = Card.find(crl.card_id)
      card_count = wallet.kinds_and_types[card.name]
      wallet.kinds_and_types[card.name] = card_count.blank? ? 1 : card_count + 1
      wallet.save
    end
  end
end
