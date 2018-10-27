class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # if sign up afford an empty wallet to current_user
  after_action :add_wallet, only: [:create], if: :devise_controller?

  private

  def add_wallet
    return {} if current_user.user_wallet
    user_wallet = UserWallet.create(left_mount: 0, kinds_and_types: {})
    user_wallet.user = current_user
    user_wallet.save
  end
end
