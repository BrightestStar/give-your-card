class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :receive_money_user_id
      t.integer :pay_money_user_id

      t.timestamps
    end
  end
end
