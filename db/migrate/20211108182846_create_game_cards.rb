class CreateGameCards < ActiveRecord::Migration[6.1]
  def change
    create_table :game_cards do |t|
      t.string :level_data
      t.string :note
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
