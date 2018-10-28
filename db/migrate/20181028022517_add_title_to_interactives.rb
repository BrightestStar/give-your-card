class AddTitleToInteractives < ActiveRecord::Migration[5.1]
  def change
    add_column :interactives, :title, :string
  end
end
