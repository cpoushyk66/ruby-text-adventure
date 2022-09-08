class CreateItesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :value
      t.integer :effect_id
      t.integer :effect_power
    end
  end
end
