class AddRelationToIntergers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.integer :interactive_id
      t.string :qr_code
    end

    change_table :cards do |t|
      t.integer :interactive_id
    end
  end
end
