module Fighter

    
    attr_accessor :speed, :damage_bonus, :spell_bonus, :current_hp, :current_mp, :spells, :max_hp, :max_mp, :held_item

    #Methods to modify Fighter stats
    def strength=(value)
        @strength = value
        self.save
        self.update_damage_bonus
    end

    def intelligence=(value)
        @intelligence = value
        self.save
        self.update_max_mp
        self.update_spell_bonus
    end

    def dexterity=(value)
        @dexterity = value
        self.save
        self.update_speed
        self.update_damage_bonus
    end

    def wisdom=(value)
        @wisdom = value
        self.save
        self.update_max_mp
        self.update_spell_bonus
    end

    def charisma=(value)
        @charisma = value
        self.save
        self.update_spell_bonus
    end

    def constitution=(value)
        @constitution = value
        self.save
        self.update_max_hp
    end

    #Updating various stats
    def update_max_hp
        self.max_hp = constitution * 10 + 10
    end

    def update_max_mp
        self.max_mp = self.intelligence > self.wisdom ? self.intelligence : self.wisdom * 10 + 10
    end

    def update_speed
        self.speed = Math.ceil(self.dexterity / 5.0)
    end

    def update_damage_bonus
        if held_item.damage_type != nil
            case (held_item.damage_type)
            when "strength"
                self.damage_bonus = held_item.damage_bonus + self.strength * self.level
            when "dexterity"
                self.damage_bonus = held_item.damage_bonus + self.dexterity * self.level
            when "intelligence"
                self.damage_bonus = held_item.damage_bonus + self.intelligence * self.level
            when "wisdom"
                self.damage_bonus = held_item.damage_bonus + self.wisdom * self.level
            when "charisma"
                self.damage_bonus = held_item.damage_bonus + self.charisma * self.level
            end
        else
            self.damage_bonus = 0;
        end
    end
    
    def update_spell_bonus
        case fighter_class.spell_type
        when "intelligence"
            self.spell_bonus = self.intelligence * self.level
        when "wisdom"
            self.spell_bonus = self.wisdom * self.level
        when "charisma"
            self.spell_bonus = self.charisma * self.level
        end
    end
        


end