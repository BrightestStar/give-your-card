class CreateCardActiveShips < ActiveRecord::Migration[5.1]
  def change
    create_table :card_active_ships do |t|
      t.integer :card_id
      t.string :interactive_id

      t.timestamps
    end
  end
end
