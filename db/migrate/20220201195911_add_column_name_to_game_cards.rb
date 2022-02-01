class AddColumnNameToGameCards < ActiveRecord::Migration[6.1]
  def change
    add_column :game_cards, :title, :string
    add_column :game_cards, :image, :string
  end
end
