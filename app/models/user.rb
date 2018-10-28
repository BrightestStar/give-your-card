# The user is customer class
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_wallet
  has_many :card_record_lists
  has_many :afford_card_users, through: :card_record_lists
  has_many :receive_card_users, through: :card_record_lists
  belongs_to :interactive, optional: true
  mount_uploader :qr_code, QrCodeUploader
end
