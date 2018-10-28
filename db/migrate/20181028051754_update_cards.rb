class UpdateCards < ActiveRecord::Migration[5.1]
  def change
    remove_column :cards, :interactive_id, :integer
  end
end
