class ChangeHolderIdToPlayerIdItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :holder_id, :player_id
    add_column :items, :enemy_id, :integer
  end
end
