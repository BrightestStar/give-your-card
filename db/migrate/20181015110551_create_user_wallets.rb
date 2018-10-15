class CreateUserWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :user_wallets do |t|
      t.integer :left_mount
      t.string :kinds_and_types

      t.timestamps
    end
  end
end
