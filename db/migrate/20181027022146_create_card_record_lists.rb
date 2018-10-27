class CreateCardRecordLists < ActiveRecord::Migration[5.1]
  def change
    create_table :card_record_lists do |t|
      t.integer :receive_card_user_id
      t.integer :afford_card_user_id
      t.integer :card_id
      t.string :cause

      t.timestamps
    end
  end
end
