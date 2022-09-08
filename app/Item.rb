class Item < ActiveRecord::Base

    belongs_to :player

    attr_accessor :damage_type
end