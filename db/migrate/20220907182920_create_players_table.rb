class CreatePlayersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :level
      t.integer :xp
      t.text :player_class
      t.integer :strength
      t.integer :intelligence
      t.integer :wisdom
      t.integer :dexterity
      t.integer :charisma
      t.integer :constitution
      t.text :inventory_code
      t.text :spells_code
      t.text :equiped_code
    end
  end
end
