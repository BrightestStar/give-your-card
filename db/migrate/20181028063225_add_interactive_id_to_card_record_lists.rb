class AddInteractiveIdToCardRecordLists < ActiveRecord::Migration[5.1]
  def change
    add_column :card_record_lists, :interactive_id, :integer
  end
end
