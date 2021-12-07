class AddColumnNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bio, :string
    add_column :users, :profile_image, :string
  end
end
