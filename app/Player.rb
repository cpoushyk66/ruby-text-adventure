require_relative "./Fighter.rb"

class Player < ActiveRecord::Base

    has_many :items, dependent: :destroy

    include Fighter

    attr_accessor :inventory

    def drop_item(item)
        Item.where("player_id = ? AND name = ?", self.id, item.name).limit(1).destroy_all
    end

    def inventory
        self.items.pluck(:name)
    end

end